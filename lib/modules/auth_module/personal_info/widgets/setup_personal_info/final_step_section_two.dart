import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/widgets/range_bar.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/enums.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/animated_value_container.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/values_gridview.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/shimmer_widgets/values_gridview_shimmer.dart';

import '../../../../../core/shared/widgets/weak_days_date.dart';
import '../../../../../core/utils/constants.dart';
import '../../../bloc/authentication_bloc.dart';

class FinalStepSectionTwo extends StatefulWidget {
  const FinalStepSectionTwo({super.key});

  @override
  State<FinalStepSectionTwo> createState() => _FinalStepSectionTwoState();
}

class _FinalStepSectionTwoState extends State<FinalStepSectionTwo> {
  @override
  void initState() {
    context.read<SetupPersonalInfoCubit>().getMuscleFocusData();
    context.read<SetupPersonalInfoCubit>().getWorkoutTypes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Text(
          LocaleKeys.sectionTwo.tr(),
          style: CustomTextStyle.bold_16.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        const SizedBox(height: 16),

        // weekly training days count
        // _buildNumberOfWeaklyTrainingSlider(cubit),
        _buildExerciseDays(cubit),
        const SizedBox(height: 8),

        // focus part
        Text(
          LocaleKeys.focusedBodyPart.tr(),
          style: CustomTextStyle.bold_14,
        ),

        const SizedBox(height: 16),

        _muscleFocus(cubit),

        const SizedBox(height: 20),

        // daily meals number
        // Text(
        //   'عدد الوجبات اليومية؟',
        //   style: CustomTextStyle.bold_14,
        // ),

        // const SizedBox(height: 16),

        // ValuesGridView(
        //   itemCount: 4,
        //   itemBuilder: (_, index) => ValueContainer(
        //     value: 'test',
        //     onTap: () {},
        //     isSelected: false,
        //   ),
        // ),

        // const SizedBox(height: 20),

        // preferred training
        Text(
          LocaleKeys.preferredEquipment.tr(),
          style: CustomTextStyle.bold_14,
        ),

        const SizedBox(height: 16),

        _workoutTypes(cubit),

        const SizedBox(height: 20),
      ],
    );
  }

  Widget _muscleFocus(SetupPersonalInfoCubit cubit) {
    final user = context.read<AuthenticationBloc>().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          p.userInfo.muscleFocusIds != c.userInfo.muscleFocusIds ||
          p.getMuscleFocusState != c.getMuscleFocusState,
      builder: (context, state) {
        if (state.getMuscleFocusState == RequestState.loading ||
            state.getMuscleFocusState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.muscleFocusData.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.muscleFocusData[index].value,
              onTap: () => cubit.updateSelectedMuscleFocusData(
                state.muscleFocusData[index].key,
              ),
              isSelected: state.userInfo.muscleFocusIds.contains(
                state.muscleFocusData[index].key,
              ) || (user != null && user.bodyParts != null && user.bodyParts!.any((focus) => focus == state.muscleFocusData[index].key)),
            ),
          );
        }
      },
    );
  }

  Widget _workoutTypes(SetupPersonalInfoCubit cubit) {
    final user = context.read<AuthenticationBloc>().currentUser;
    print("types : ${user?.workoutTypes?.length}");
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          p.userInfo.workoutTypesIds != c.userInfo.workoutTypesIds ||
          p.getWorkoutTypesState != c.getWorkoutTypesState,
      builder: (context, state) {
        if (state.getWorkoutTypesState == RequestState.loading ||
            state.getWorkoutTypesState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.workoutTypes.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.workoutTypes[index].name,
              onTap: () => cubit.updateSelectedWorkoutTypes(
                state.workoutTypes[index].id,
              ),
              isSelected: state.userInfo.workoutTypesIds.contains(
                state.workoutTypes[index].id,
              ) || (user != null && user.workoutTypes != null && user.workoutTypes!.any((type) => type.id == state.workoutTypes[index].id)),
            ),
          );
        }
      },
    );
  }

  Widget _buildNumberOfWeaklyTrainingSlider(SetupPersonalInfoCubit cubit) {
    return BlocSelector<SetupPersonalInfoCubit, SetupPersonalInfoState, int?>(
      selector: (state) => state.userInfo.weaklyTrainingCount,
      builder: (_, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              children: [
                Text(
                  'عدد مرات التدريب الاسبوعى؟',
                  style: CustomTextStyle.bold_14,
                ),
                const SizedBox(width: 20),
                ValueContainer(
                  value: state ?? "-",
                ),
                const SizedBox(width: 20),
                Text(
                  'تمرين',
                  style: CustomTextStyle.bold_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // target weight slider
          RangeBar(
            maxRange: 7,
            minRange: 0,
            padding: EdgeInsets.zero,
            initialValues: const [0],
            onChanged: (int handlerIndex, lowerValue, upperValue) {
              cubit.updateUserWeaklyTrainingCount(
                  (lowerValue as double).round());
            },
            isSingle: false,
            alwaysShowTooltip: false,
            title: 'تمرين',
          ),
        ],
      ),
    );
  }


  _buildExerciseDays(SetupPersonalInfoCubit cubit){
    final user = context.read<AuthenticationBloc>().currentUser;
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
        buildWhen: (p, c) =>
        p.userInfo.exciseDays != c.userInfo.exciseDays ,
        builder: (context, state) {
    return Row(
        children: [
          for (int i = 0; i < 7; i++)
            Builder(
              builder: (context) {
                print("date : ${DateFormat.EEEE().format(WeakDaysDate.getCurrentWeekDays()[i])}");
                bool isSelected = state.userInfo.exciseDays.contains(DateFormat.EEEE().format(WeakDaysDate.getCurrentWeekDays()[i])) || (user != null && user.exerciseDays != null && user.exerciseDays!.any((day) => day == DateFormat.EEEE().format(WeakDaysDate.getCurrentWeekDays()[i])));

                return GestureDetector(
                  onTap: () {
                    cubit.updateSelectedExerciseDaysData(DateFormat.EEEE().format(WeakDaysDate.getCurrentWeekDays()[i]));
                  },
                  child: Container(
                    margin: EdgeInsetsDirectional.only(end: i != 6 ? 8 : 0),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    decoration: BoxDecoration(
                      color:isSelected
                          ? Theme.of(context).colorScheme.primary
                          : AppColors.cardColor,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      border: Border.all(color: AppColors.strockColor),
                    ),
                    child: Column(
                      children: [

                        Text(
                          DateFormat.E().format(WeakDaysDate.getCurrentWeekDays()[i]),
                          style: CustomTextStyle.regular_14.copyWith(
                            fontWeight:isSelected ? FontWeight.w700 : null,
                            color: isSelected
                                ? AppColors.selectedFont
                                : AppColors.fontColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
        ],
      );
  },
),
    );
  }
}


