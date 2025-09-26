import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_appbar.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/data/models/workout_progress_model.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import 'controller/workout_cubit.dart';

// دالة لمعالجة أسماء التمارين العربية
String _fixExerciseName(String name) {
  // معالجة أسماء التمرين العربي للظهر
  if (name.toLowerCase().contains('عودة') ||
      name.toLowerCase().contains('عوده') ||
      name.toLowerCase().contains('العودة') ||
      name.toLowerCase().contains('العوده')) {
    return 'الظهر';
  }
  return name;
}

// تعداد لحالة التمرين
enum WorkoutPhase {
  waiting, // انتظار البدء
  exercise, // تمرين
  rest, // استراحة
  paused, // إيقاف مؤقت
  completed, // مكتمل
}

class PlayWorkoutScreen extends StatefulWidget {
  final String title;
  final Exercise exercise;
  static const routeWzTitleAnExtra = '/playTrainingScreen';

  const PlayWorkoutScreen(
      {super.key, required this.title, required this.exercise});

  @override
  State<PlayWorkoutScreen> createState() => _PlayWorkoutScreenState();
}

class _PlayWorkoutScreenState extends State<PlayWorkoutScreen>
    with TickerProviderStateMixin {
  Timer? _timer;
  late GifController gifController;

  // متغيرات التمرين
  int _currentSet = 1;
  int _remainingSets = 0;
  int _exerciseTime = 0; // وقت التمرين بالثواني
  final int _restTime = 20; // وقت الاستراحة بالثواني
  int _currentTime = 0; // الوقت الحالي
  WorkoutPhase _currentPhase = WorkoutPhase.waiting;
  WorkoutPhase _lastActivePhase =
      WorkoutPhase.waiting; // المرحلة النشطة الأخيرة قبل الإيقاف

  // إحصائيات الوقت
  int _totalWorkoutTime = 0; // إجمالي وقت التمرين بالثواني
  int _totalRestTime = 0; // إجمالي وقت الاستراحة بالثواني

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    gifController = GifController(vsync: this);

    final cubit = AppConst.rootScaffoldKey.currentContext!.read<WorkoutCubit>();
    final plan = cubit.getPlanForToday()!;

    _exerciseTime = plan.timePerExercise;
    _remainingSets = plan.sets;
    _currentTime = _exerciseTime;

    // استعادة الحالة المحفوظة
    _currentSet = cubit.getCurrentSet(widget.exercise.id);

    // تحديد المرحلة الحالية بناءً على حالة المجموعة
    final currentSetStatus =
        cubit.getSetStatus(widget.exercise.id, _currentSet);

    if (currentSetStatus == SetStatus.completed) {
      // إذا كانت المجموعة الحالية مكتملة، انتقل للمجموعة التالية
      _currentSet++;

      // حساب المجموعات المتبقية بناءً على المجموعة الحالية
      _remainingSets = plan.sets - (_currentSet - 1);

      if (_remainingSets > 0) {
        // إذا لم نصل لنهاية التمرين، انتقل لمرحلة الاستراحة
        _currentPhase = WorkoutPhase.rest;
        _currentTime = _restTime;
      } else {
        // إذا وصلنا لنهاية التمرين
        _currentPhase = WorkoutPhase.completed;
        _remainingSets = 0;
      }
    } else if (currentSetStatus == SetStatus.inProgress) {
      // إذا كانت المجموعة قيد التقدم، انتقل لمرحلة التمرين
      _currentPhase = WorkoutPhase.exercise;
      _currentTime = _exerciseTime;

      // حساب المجموعات المتبقية
      _remainingSets = plan.sets - (_currentSet - 1);
    } else {
      // إذا لم تبدأ المجموعة بعد، انتقل لمرحلة الانتظار
      _currentPhase = WorkoutPhase.waiting;

      // حساب المجموعات المتبقية
      _remainingSets = plan.sets - (_currentSet - 1);
    }

    cubit.initSets();
  }

  @override
  void dispose() {
    gifController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  // بدء التمرين
  void startWorkout() {
    final cubit = context.read<WorkoutCubit>();

    // بدء المجموعة الحالية
    cubit.startSet(widget.exercise.id, _currentSet);

    setState(() {
      _currentPhase = WorkoutPhase.exercise;
      _lastActivePhase = WorkoutPhase.exercise;
      _currentTime = _exerciseTime;
    });

    startTimer();
    _playGif();
  }

  // إيقاف مؤقت
  void pauseWorkout() {
    setState(() {
      _lastActivePhase = _currentPhase; // حفظ المرحلة النشطة الأخيرة
      _currentPhase = WorkoutPhase.paused;
    });

    _timer?.cancel();
    _pauseGif();
  }

  // استئناف التمرين
  void resumeWorkout() {
    setState(() {
      // العودة للمرحلة النشطة الأخيرة قبل الإيقاف
      _currentPhase = _lastActivePhase;
    });

    startTimer();
    if (_currentPhase == WorkoutPhase.exercise) {
      _playGif();
    }
  }

  // إنهاء المجموعة الحالية
  void completeSet() {
    _timer?.cancel();
    final cubit = context.read<WorkoutCubit>();

    // حساب وقت التمرين والاستراحة للمجموعة الحالية
    final workoutTimeForSet = _exerciseTime - _currentTime;
    _totalWorkoutTime += workoutTimeForSet;

    // حفظ إكمال المجموعة الحالية (وقت الاستراحة سيتم حسابه عند انتهائها)
    cubit.completeSet(widget.exercise.id, _currentSet, workoutTimeForSet,
        0 // وقت الاستراحة سيتم حسابه عند انتهائها
        );

    setState(() {
      _currentSet++;
      _remainingSets--;

      if (_remainingSets > 0) {
        // الانتقال لاستراحة
        _currentPhase = WorkoutPhase.rest;
        _lastActivePhase = WorkoutPhase.rest;
        _currentTime = _restTime;
      } else {
        // انتهاء التمرين
        _currentPhase = WorkoutPhase.completed;
        _completeWorkout();
        return;
      }
    });

    startTimer();
    _pauseGif();
  }

  // تخطي الاستراحة
  void skipRest() {
    _timer?.cancel();
    final cubit = context.read<WorkoutCubit>();

    // حساب وقت الاستراحة المتبقي
    final restTimeForSet = _restTime - _currentTime;
    _totalRestTime += restTimeForSet;

    // تحديث وقت الاستراحة للمجموعة السابقة
    cubit.completeSet(
      widget.exercise.id,
      _currentSet - 1, // المجموعة السابقة
      0, // وقت التمرين (تم حفظه مسبقاً)
      restTimeForSet, // وقت الاستراحة المتبقي
    );

    // بدء المجموعة التالية
    cubit.startSet(widget.exercise.id, _currentSet);

    setState(() {
      _currentPhase = WorkoutPhase.exercise;
      _lastActivePhase = WorkoutPhase.exercise;
      _currentTime = _exerciseTime;
    });

    startTimer();
    _playGif();
  }

  // إكمال التمرين
  void _completeWorkout() {
    final cubit = context.read<WorkoutCubit>();

    // حفظ التمرين مع الوقت الفعلي
    cubit.completeExerciseWithTime(
        widget.exercise.id, _totalWorkoutTime, _totalRestTime);

    // العودة للشاشة السابقة
    context.pop();
  }

  // إنهاء التمرين مبكراً (مع احتساب السعرات للمجموعات المكتملة)
  void _finishWorkoutEarly() {
    final cubit = context.read<WorkoutCubit>();

    // حساب عدد المجموعات المكتملة فعلياً
    final completedSets =
        _currentSet - 1; // المجموعات المكتملة = المجموعة الحالية - 1

    if (completedSets > 0) {

      // حفظ التمرين مع الوقت الفعلي والمجموعات المكتملة
      cubit.completeExerciseWithTime(
          widget.exercise.id, _totalWorkoutTime, _totalRestTime,
          completedSets: completedSets);
    } else {
      // إذا لم تكن هناك مجموعات مكتملة، اعتبره تمرين متخطى
      cubit.skipExercise(widget.exercise.id);
    }

    // العودة للشاشة السابقة
    context.pop();
  }

  // بدء العداد
  void startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentTime > 0) {
        setState(() {
          _currentTime--;
        });
      } else {
        timer.cancel();
        _onTimerComplete();
      }
    });
  }

  // انتهاء العداد
  void _onTimerComplete() {
    // إشعار بصري
    _showTimerCompleteNotification();

    if (_currentPhase == WorkoutPhase.exercise) {
      // انتهاء وقت التمرين - تلقائياً ينتقل للاستراحة
      completeSet();
    } else if (_currentPhase == WorkoutPhase.rest) {
      // انتهاء وقت الاستراحة - العودة للتمرين
      final cubit = context.read<WorkoutCubit>();

      // حساب وقت الاستراحة الكامل
      final restTimeForSet = _restTime;
      _totalRestTime += restTimeForSet;

      // تحديث وقت الاستراحة للمجموعة السابقة
      cubit.completeSet(
        widget.exercise.id,
        _currentSet - 1, // المجموعة السابقة
        0, // وقت التمرين (تم حفظه مسبقاً)
        restTimeForSet, // وقت الاستراحة الكامل
      );

      // بدء المجموعة التالية
      cubit.startSet(widget.exercise.id, _currentSet);

      setState(() {
        _currentPhase = WorkoutPhase.exercise;
        _lastActivePhase = WorkoutPhase.exercise;
        _currentTime = _exerciseTime;
      });
      startTimer();
      _playGif();
    }
  }

  // إظهار toast انتهاء العداد من الأعلى
  void _showTimerCompleteNotification() {
    String message;
    if (_currentPhase == WorkoutPhase.exercise) {
      // إذا كانت المجموعة الأخيرة، استخدم رسالة إكمال التمرين
      if (_remainingSets <= 1) {
        message = L10n.tr().exerciseCompleted;
      } else {
        message = L10n.tr().exerciseTimeEnded;
      }
    } else {
      message = L10n.tr().restTimeEnded;
    }

    // استخدام ScaffoldMessenger بدلاً من Alerts.showToast
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: _getPhaseColor(),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          top: 50.px,
          left: 20.px,
          right: 20.px,
          bottom: MediaQuery.sizeOf(context).height * 0.83,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.px),
        ),
        elevation: 10,
      ),
    );
  }

  // تشغيل الجيف
  void _playGif() {
    gifController.forward().then((value) => gifController.repeat());
  }

  // إيقاف الجيف
  void _pauseGif() {
    gifController.stop();
  }

  // تنسيق الوقت
  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WorkoutCubit>();
    final user = Session().currentUser;

    return BlocListener<AppCubit, AppState>(
      listener: (context, appState) {
        if (user?.haveExercisePlan == true &&
            user?.hasValidSubscription == true) {
          cubit.getWorkOutPlan();
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: _fixExerciseName(widget.title),
          onBack: () {
            // إلغاء التمرين إذا كان قيد التشغيل
            _timer?.cancel();
            context.pop();
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.px),
            child: Column(
              children: [
                // صورة التمرين
                Expanded(
                  flex: 6,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.px),
                      color: Colors.grey[100],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.px),
                      child: Gif(
                        repeat: ImageRepeat.repeat,
                        fit: BoxFit.cover,
                        controller: gifController,
                        image: NetworkImage(widget.exercise.gifUrl),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16.px),

                // العداد الرئيسي
                Container(
                  width: 150.px,
                  height: 150.px,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _getPhaseColor().withValues(alpha: 0.1),
                    border: Border.all(
                      color: _getPhaseColor(),
                      width: 3,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: _getPhaseColor().withValues(alpha: 0.3),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // نص المرحلة الحالية
                      Text(
                        _getPhaseText(),
                        style: TStyle.semiBold_16.copyWith(
                          color: _getPhaseColor(),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8.px),

                      // العداد
                      Text(
                        _formatTime(_currentTime),
                        style: TStyle.semiBold_24.copyWith(
                          fontSize: 24,
                          color: _getPhaseColor(),
                        ),
                      ),

                      SizedBox(height: 8.px),

                      // معلومات المجموعة
                      Text(
                        '${L10n.tr().group} $_currentSet ${L10n.tr().ofText} ${_remainingSets + _currentSet - 1}',
                        style: TStyle.semiBold_16.copyWith(
                          color: Colors.grey[400],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.px),

                // معلومات السعرات الحرارية
                BlocBuilder<WorkoutCubit, WorkoutState>(
                  builder: (context, state) {
                    final plan =
                        context.read<WorkoutCubit>().getPlanForToday()!;

                    return Container(
                      padding: EdgeInsets.all(12.px),
                      decoration: BoxDecoration(
                        color: _getPhaseColor().withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.px),
                        border: Border.all(
                          color: _getPhaseColor().withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  L10n.tr().calorieBurn,
                                  style: TStyle.semiBold_16.copyWith(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Text(
                                  '${plan.caloriesBurned}',
                                  style: TStyle.semiBold_24.copyWith(
                                    fontSize: 18,
                                    color: _getPhaseColor(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 40.px,
                            color: Colors.grey[300],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  L10n.tr().remainingGroups,
                                  style: TStyle.semiBold_16.copyWith(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Text(
                                  '$_remainingSets',
                                  style: TStyle.semiBold_24.copyWith(
                                    fontSize: 18,
                                    color: _getPhaseColor(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                SizedBox(height: 20.px),

                // الأزرار
                _buildActionButtons(),

                SizedBox(height: 20.px),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // الحصول على لون المرحلة الحالية
  Color _getPhaseColor() {
    switch (_currentPhase) {
      case WorkoutPhase.waiting:
        return Colors.blue;
      case WorkoutPhase.exercise:
        return Colors.green;
      case WorkoutPhase.rest:
        return Colors.orange;
      case WorkoutPhase.paused:
        return Colors.grey;
      case WorkoutPhase.completed:
        return Colors.green;
    }
  }

  // الحصول على نص المرحلة الحالية
  String _getPhaseText() {
    switch (_currentPhase) {
      case WorkoutPhase.waiting:
        return L10n.tr().start;
      case WorkoutPhase.exercise:
        return L10n.tr().exercise;
      case WorkoutPhase.rest:
        return L10n.tr().rest;
      case WorkoutPhase.paused:
        return L10n.tr().paused;
      case WorkoutPhase.completed:
        return L10n.tr().completed;
    }
  }

  // بناء الأزرار حسب المرحلة الحالية
  Widget _buildActionButtons() {
    switch (_currentPhase) {
      case WorkoutPhase.waiting:
        return _buildWaitingButtons();
      case WorkoutPhase.exercise:
        return _buildExerciseButtons();
      case WorkoutPhase.rest:
        return _buildRestButtons();
      case WorkoutPhase.paused:
        return _buildPausedButtons();
      case WorkoutPhase.completed:
        return _buildCompletedButtons();
    }
  }

  // أزرار انتظار البدء
  Widget _buildWaitingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // زر البدء
        ElevatedButton.icon(
          onPressed: startWorkout,
          icon: const Icon(Icons.play_arrow, size: 24),
          label: Text(L10n.tr().startWorkout),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),

        // زر تخطي
        OutlinedButton.icon(
          onPressed: () {
            _timer?.cancel();
            context.read<WorkoutCubit>().skipExercise(widget.exercise.id);
            context.pop();
          },
          icon: const Icon(Icons.skip_next, size: 24),
          label: Text(L10n.tr().skip),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.grey[600],
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),
      ],
    );
  }

  // أزرار أثناء التمرين
  Widget _buildExerciseButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // زر الإيقاف المؤقت
        ElevatedButton.icon(
          onPressed: pauseWorkout,
          icon: const Icon(Icons.pause, size: 24),
          label: Text(L10n.tr().pause),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),

        // زر إنهاء المجموعة
        ElevatedButton.icon(
          onPressed: completeSet,
          icon: const Icon(Icons.check_circle, size: 24),
          label: Text(L10n.tr().endSet),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),
      ],
    );
  }

  // أزرار أثناء الاستراحة
  Widget _buildRestButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // زر تخطي الاستراحة
        ElevatedButton.icon(
          onPressed: skipRest,
          icon: const Icon(Icons.skip_next, size: 24),
          label: Text(L10n.tr().skip),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),

        // زر إيقاف مؤقت
        ElevatedButton.icon(
          onPressed: pauseWorkout,
          icon: const Icon(Icons.pause, size: 24),
          label: Text(L10n.tr().pause),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),
      ],
    );
  }

  // أزرار أثناء الإيقاف المؤقت
  Widget _buildPausedButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // زر الاستئناف
        ElevatedButton.icon(
          onPressed: resumeWorkout,
          icon: const Icon(Icons.play_arrow, size: 24),
          label: Text(L10n.tr().resumeWorkout),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),

        // زر إنهاء التمرين
        OutlinedButton.icon(
          onPressed: () {
            _timer?.cancel();
            _finishWorkoutEarly();
          },
          icon: const Icon(Icons.stop, size: 24),
          label: Text(L10n.tr().finishExercise),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 12.px),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
          ),
        ),
      ],
    );
  }

  // أزرار عند الانتهاء
  Widget _buildCompletedButtons() {
    return ElevatedButton.icon(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(Icons.check, size: 24),
      label: Text(L10n.tr().finishExercise),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 32.px, vertical: 16.px),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.px),
        ),
      ),
    );
  }
}
