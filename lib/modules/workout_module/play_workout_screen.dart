import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:chewie/chewie.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/const.dart';
import 'package:urfit/core/shared/widgets/custom_appbar.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/widgets/play_button.dart';
import 'package:video_player/video_player.dart';

import '../../core/routes/routes.dart';
import '../../core/style/colors.dart';
import '../profile_module/widgets/previous_plan_screen_widgets/calories_and_steps.dart';
import 'controller/workout_cubit.dart';

class PlayWorkoutScreen extends StatefulWidget {
  final String title;
  final Exercise exercise;

  const PlayWorkoutScreen(
      {super.key, required this.title, required this.exercise});

  @override
  State<PlayWorkoutScreen> createState() => _PlayWorkoutScreenState();
}

class _PlayWorkoutScreenState extends State<PlayWorkoutScreen>
    with TickerProviderStateMixin {
  Timer? _timer;
  late int _start;
  late GifController controller;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    controller = GifController(
      vsync: this,
    );
    _start = rootScaffoldKey.currentContext!
        .read<WorkoutCubit>()
        .getPlanForToday()!
        .timePerExercise;
    rootScaffoldKey.currentContext!.read<WorkoutCubit>().initSets();
  }

  @override
  void dispose() {
    controller.dispose();
    _timer?.cancel();
    super.dispose();

  }

  void startTimer() {
    final cubit = context.read<WorkoutCubit>();
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        print("ticker Timer : $_start");
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _start = cubit.getPlanForToday()!.timePerExercise;
            cubit.stopTraining(controller);
            cubit.updateRemainingSets(widget.exercise.id);
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WorkoutCubit>();

    return Scaffold(
      appBar: CustomAppBar(
          title: widget.title,
          onBack: () {
            context.pop();
          }),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.px),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.55,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.px),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.px),
                        color: Colors.red),
                    child: Gif(
                        repeat: ImageRepeat.repeat,
                        // duration: Duration(seconds: cubit.getPlanForToday()!.timePerExercise),
                        fit: BoxFit.cover,
                        controller: controller,
                        image: NetworkImage(widget.exercise.gifUrl)),
                  ),
                ),
              ),
              SizedBox(
                height: 16.px,
              ),
              BlocBuilder<WorkoutCubit, WorkoutState>(
                builder: (context, state) {
                  print(
                      "remainingSets : ${state.remainingSets[widget.exercise.id]}");
                  return CaloriesAndSteps(
                    calories: context
                        .read<WorkoutCubit>()
                        .getPlanForToday()!
                        .caloriesBurned,
                    sets: state.remainingSets[widget.exercise.id]!,
                  );
                },
              ),
              SizedBox(
                height: 16.px,
              ),
              Text(_start.toString(),
                  style: CustomTextStyle.semiBold_24.copyWith(fontSize: 18)),
              SizedBox(
                height: 16.px,
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: cubit.state.progressValue !=
                                cubit.getPlanForToday()!.exercises.length
                            ? () {
                                final value = context
                                    .read<WorkoutCubit>()
                                    .state
                                    .progressValue;
                                cubit.updateProgress(value + 1);
                                context.pop();
                              }
                            : null,
                        child: Text(
                          'الانتقال للتمرين التالي',
                          style: CustomTextStyle.semiBold_24.copyWith(
                              color: cubit.state.progressValue !=
                                      cubit.getPlanForToday()!.exercises.length
                                  ? AppColors.primaryColor
                                  : AppColors.greyColor,
                              fontSize: 18),
                        )),
                    PlayButton(
                      controller: controller,
                      start: startTimer,
                      exerciseId: widget.exercise.id,
                    ),
                    TextButton(
                        onPressed: cubit.state.progressValue ==
                                cubit.getPlanForToday()!.exercises.length
                            ? () {
                          context.pop();
                          navigatorKey.currentContext?.pop();
                              }
                            : null,
                        child: Text(
                          'انهاء التمرين',
                          style: CustomTextStyle.semiBold_24.copyWith(
                              fontSize: 18,
                              color: cubit.state.progressValue ==
                                      cubit.getPlanForToday()!.exercises.length
                                  ? AppColors.primaryColor
                                  : AppColors.greyColor),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
