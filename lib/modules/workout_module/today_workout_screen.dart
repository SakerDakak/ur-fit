import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_appbar.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/play_workout_screen.dart';

import '../../core/presentation/style/colors.dart';
import '../meals_module/widgets/filter_title_widget.dart';

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

class TodayWorkoutScreen extends StatelessWidget {
  final List<Exercise> exercises;
  static const routeWzExtra = '/todayWorkOutScreen';

  const TodayWorkoutScreen({super.key, required this.exercises});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WorkoutCubit>();
    final user = Session().currentUser;
    final List<String> workoutList =
        exercises.map((e) => stringFromInt(e.id)).toList();

    // الاستماع لتغيير اللغة وإعادة تحميل البيانات
    return BlocListener<AppCubit, AppState>(
      listener: (context, appState) {
        // عند تغيير اللغة، إعادة تحميل بيانات التمارين
        if (user?.haveExercisePlan == true &&
            user?.hasValidSubscription == true) {
          cubit.getWorkOutPlan();
        }
      },
      child: Scaffold(
          appBar: CustomAppBar(
              title: L10n.tr().detailsOfTodayExercises,
              onBack: () {
                context.pop();
              }),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.px),
            child: SingleChildScrollView(
              child: BlocBuilder<WorkoutCubit, WorkoutState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      WorkOutProgressHeader(
                        progressValue: state.progressValue,
                        workoutList: workoutList,
                        numericalList: workoutList,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _fixExerciseName(
                                exercises[state.progressValue - 1].name),
                            style: TStyle.regular_14.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 16.px),
                          SizedBox(
                            height: 300.px,
                            child: GridTile(
                                footer: GridTileBar(
                                  backgroundColor:
                                      Co.backGround.withValues(alpha: 0.7),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _fixExerciseName(
                                            exercises[state.progressValue - 1]
                                                .name),
                                        style: TStyle.regular_14.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${context.read<WorkoutCubit>().getPlanForToday()!.caloriesBurned} ${L10n.tr().calorie}',
                                        style: TStyle.regular_14.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.only(top: 8.px),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsManager.time,
                                          colorFilter: const ColorFilter.mode(
                                              Colors.white, BlendMode.srcIn),
                                        ),
                                        SizedBox(
                                          width: 4.px,
                                        ),
                                        Text(
                                          '${cubit.formattedTime(seconds: cubit.getPlanForToday()!.timePerExercise * cubit.getPlanForToday()!.sets)} ${L10n.tr().min}',
                                          style: TStyle.regular_14.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.px),
                                  child: Gif(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        exercises[state.progressValue - 1]
                                            .gifUrl),
                                    autostart: Autostart.no,
                                    placeholder: (context) =>
                                        Center(child: Text(L10n.tr().loading)),
                                  ),
                                )),
                          ),
                          SizedBox(height: 16.px),
                          TrainingDescription(
                            description:
                                exercises[state.progressValue - 1].instructions,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.px,
                      ),
                      CustomElevatedButton(
                          text: L10n.tr().start,
                          onPressed: () {
                            context.pushNamed(
                                PlayWorkoutScreen.routeWzTitleAnExtra,
                                pathParameters: {
                                  'title': _fixExerciseName(
                                      exercises[state.progressValue - 1].name)
                                },
                                extra: exercises[state.progressValue - 1]);
                          }),
                      SizedBox(
                        height: 50.px,
                      ),
                    ],
                  );
                },
              ),
            ),
          )),
    );
  }
}

class TrainingDescription extends StatelessWidget {
  final List<String> description;

  const TrainingDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final exercisePlan = context.read<WorkoutCubit>().getPlanForToday();
    print("excersize plan : $exercisePlan");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          L10n.tr().instructions,
          style: TStyle.bold_16.copyWith(
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.primary),
        ),
        ...description.map(
          (des) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Text(
              des,
              style: TStyle.regular_14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Text(
          L10n.tr().excerciseDescription,
          style: TStyle.bold_16.copyWith(
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.primary),
        ),
        SizedBox(
          height: 16.px,
        ),
        TrainingDescriptionItem(
          title: L10n.tr().excerciseDuration,
          value:
              '${context.read<WorkoutCubit>().formattedTime(seconds: exercisePlan!.timePerExercise * exercisePlan.sets)} ${L10n.tr().min}',
          icon: AssetsManager.time,
        ),
        SizedBox(
          height: 16.px,
        ),
        TrainingDescriptionItem(
          title: L10n.tr().expectedBurnedCalories,
          value: '${exercisePlan.caloriesBurned} ${L10n.tr().calorie}',
          icon: AssetsManager.calories,
        ),
        SizedBox(
          height: 16.px,
        ),
        TrainingDescriptionItem(
          title: L10n.tr().groups,
          value: '${exercisePlan.sets} ${L10n.tr().group}',
          icon: AssetsManager.steps,
        ),
      ],
    );
  }
}

class TrainingDescriptionItem extends StatelessWidget {
  final String title;
  final String value;
  final String icon;

  const TrainingDescriptionItem({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilterTitleWidget(
          icon: icon,
          title: title,
        ),
        Text(
          value,
          style: TStyle.bold_14,
        )
      ],
    );
  }
}

class WorkOutProgressHeader extends StatelessWidget {
  const WorkOutProgressHeader({
    super.key,
    required this.progressValue,
    required this.workoutList,
    required this.numericalList,
  });

  final int progressValue;
  final List<String> workoutList;

  final List<String> numericalList;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WorkoutCubit>();
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetsManager.workout,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn),
                      width: 16.px,
                      height: 10.px,
                    ),
                    SizedBox(
                      width: 5.px,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.updateProgress(1);
                      },
                      child: Text(
                        workoutList.first,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TStyle.regular_14.copyWith(
                          fontWeight: FontWeight.w600,
                          color: state.progressValue >= 1
                              ? Theme.of(context).colorScheme.primary
                              : Co.whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
                ...workoutList.skip(1).map((workout) {
                  final index = workoutList.indexOf(workout) + 1;

                  return GestureDetector(
                    onTap: () {
                      cubit.updateProgress(index);
                    },
                    child: Text(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      workout,
                      style: TStyle.regular_14.copyWith(
                        fontWeight: FontWeight.w600,
                        color: state.progressValue >= index
                            ? Theme.of(context).colorScheme.primary
                            : Co.whiteColor,
                      ),
                    ),
                  );
                }),
              ],
            ),
            SizedBox(
              height: 8.px,
            ),
            LinearProgressIndicator(
              value: progressValue / workoutList.length,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  workoutList[progressValue - 1],
                  style: TStyle.bold_14.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextButton(
                  onPressed: cubit.state.progressValue !=
                          cubit.getPlanForToday()!.exercises.length
                      ? () {
                          final value =
                              context.read<WorkoutCubit>().state.progressValue;
                          cubit.updateProgress(value + 1);
                          context.pop();
                        }
                      : null,
                  child: Text(
                    L10n.tr().skip,
                    style: TStyle.regular_14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: cubit.state.progressValue !=
                              cubit.getPlanForToday()!.exercises.length
                          ? Co.whiteColor
                          : Co.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

String stringFromInt(int value) {
  switch (value) {
    case 1:
      return L10n.tr().first;
    case 2:
      return L10n.tr().second;
    case 3:
      return L10n.tr().third;
    case 4:
      return L10n.tr().fourth;
    case 5:
      return L10n.tr().fifth;
    case 6:
      return L10n.tr().sixth;
    case 7:
      return L10n.tr().seventh;
    case 8:
      return L10n.tr().eighth;
    case 9:
      return L10n.tr().ninth;
    case 10:
      return L10n.tr().tenth;
    default:
      return L10n.tr().finaly;
  }
}
