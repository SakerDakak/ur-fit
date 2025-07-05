
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/range_bar.dart';
import 'package:urfit/modules/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/animated_value_container.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/values_gridview.dart';
import 'package:urfit/modules/personal_info/widgets/shimmer_widgets/values_gridview_shimmer.dart';


class FinalStepSectionOne extends StatefulWidget {
  const FinalStepSectionOne({super.key});

  @override
  State<FinalStepSectionOne> createState() => _FinalStepSectionOneState();
}

class _FinalStepSectionOneState extends State<FinalStepSectionOne> {
  @override
  void initState() {
    context.read<SetupPersonalInfoCubit>().getLikedMealsOptions();
    context.read<SetupPersonalInfoCubit>().getNotLikedMealsOptions();
    context.read<SetupPersonalInfoCubit>().getMealVariantsOptions();
    context.read<SetupPersonalInfoCubit>().getNoOfDailyMeals();
    context.read<SetupPersonalInfoCubit>().getDietOptions();

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
          L10n.tr().sectionOne,
          style: TStyle.bold_16.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        const SizedBox(height: 16),

        // target weight
        _buildTargetWeightSlider(cubit),

        const SizedBox(height: 8),

        // preferred meals 1
        Row(
          children: [
            Expanded(
              child: Text(
                L10n.tr().mealsYouLike,
                style: TStyle.bold_14,
              ),
            ),
            // Text(
            //   L10n.tr().More,
            //   style: CustomTextStyle.bold_14.copyWith(
            //     color: Theme.of(context).colorScheme.primary,
            //   ),
            // ),
          ],
        ),

        const SizedBox(height: 16),

        _likedMeals(cubit),

        const SizedBox(height: 20),

        // preferred meals 2
        Row(
          children: [
            Expanded(
              child: Text(
                L10n.tr().mealsNotLiked,
                style: TStyle.bold_14,
              ),
            ),
            // Text(
            //   'عرض الكل',
            //   style: CustomTextStyle.bold_14.copyWith(
            //     color: Theme.of(context).colorScheme.primary,
            //   ),
            // ),
          ],
        ),

        const SizedBox(height: 16),

        _notLikedMeals(cubit),

        const SizedBox(height: 20),

        // daily meals number
        Text(
          L10n.tr().numberOfMealsPerDay,
          style: TStyle.bold_14,
        ),

        const SizedBox(height: 16),

        _mealsNumberPerDay(cubit),

        const SizedBox(height: 20),

        // daily meals number
        Text(
          L10n.tr().dietType,
          style: TStyle.bold_14,
        ),

        const SizedBox(height: 16),

        _dietsWidget(cubit),

        const SizedBox(height: 20),
        // meals variety level
        Text(
          L10n.tr().mealsVerity,
          style: TStyle.bold_14,
        ),

        const SizedBox(height: 16),

        _mealsVariants(cubit),

        const SizedBox(height: 20),
      ],
    );
  }

  Widget _mealsVariants(SetupPersonalInfoCubit cubit) {
    final user = Session().currentUser;
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          p.userInfo.mealsVariantsId != c.userInfo.mealsVariantsId ||
          p.getMealVariantsState != c.getMealVariantsState,
      builder: (context, state) {
        if (state.getMealVariantsState == RequestState.loading ||
            state.getMealVariantsState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.mealVariants.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.mealVariants[index].name,
              onTap: () => cubit
                  .updateSelectedMealsVariants(state.mealVariants[index].id),
              isSelected: state.userInfo.mealsVariantsId == state.mealVariants[index].id || user?.mealVariety?.id == state.mealVariants[index].id,

            ),
          );
        }
      },
    );
  }

  Widget _likedMeals(SetupPersonalInfoCubit cubit) {
    final user = Session().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          p.userInfo.likedMealsIds != c.userInfo.likedMealsIds ||
          p.getLikedMealsState != c.getLikedMealsState,
      builder: (context, state) {
        if (state.getLikedMealsState == RequestState.loading ||
            state.getLikedMealsState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.mealsLiked.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.mealsLiked[index].name,
              onTap: () =>
                  cubit.updateSelectedLikedMeals(state.mealsLiked[index].id),
              isSelected: state.userInfo.likedMealsIds.contains(
                state.mealsLiked[index].id,
              ) || (user != null && user.recipeTypes != null && user.recipeTypes!.any((recipe) => recipe.id == state.mealsLiked[index].id)),
            ),
          );
        }
      },
    );
  }

  Widget _notLikedMeals(SetupPersonalInfoCubit cubit) {
    final user = Session().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          p.userInfo.notLikedMealsIds != c.userInfo.notLikedMealsIds ||
          p.getNotLikedMealsState != c.getNotLikedMealsState,
      builder: (context, state) {
        if (state.getNotLikedMealsState == RequestState.loading ||
            state.getNotLikedMealsState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.mealsNotLiked.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.mealsNotLiked[index].name,
              onTap: () => cubit
                  .updateSelectedNotLikedMeals(state.mealsNotLiked[index].id),
              isSelected: state.userInfo.notLikedMealsIds.contains(
                state.mealsNotLiked[index].id,
              ) || (user != null && user.foodsNotLiked != null && user.foodsNotLiked!.any((food) => food.id == state.mealsNotLiked[index].id)),
            ),
          );
        }
      },
    );
  }

  Widget _buildTargetWeightSlider(SetupPersonalInfoCubit cubit) {
    final user = Session().currentUser;
    return BlocSelector<SetupPersonalInfoCubit, SetupPersonalInfoState,
        double?>(
      selector: (state) => state.userInfo.targetWeight,
      builder: (_, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              children: [
                Text(
                  L10n.tr().weightYouWantToTarget,
                  style: TStyle.bold_14,
                ),
                const SizedBox(width: 20),
                ValueContainer(
                  value: state ?? user?.targetWeight ?? "-",
                ),
                const SizedBox(width: 20),
                Text(
                  L10n.tr().kg,
                  style: TStyle.bold_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // target weight slider
          RangeBar(
            maxRange: 100,
            minRange: 0,
            padding: EdgeInsets.zero,
            initialValues: [state?.toDouble() ?? user?.targetWeight?.toDouble() ?? 0.0],
            onChanged: (int handlerIndex, lowerValue, upperValue) {
              cubit.updateUserTargetWeight(lowerValue);
            },
            isSingle: false,
            alwaysShowTooltip: false,
            title: L10n.tr().kg,
          ),
        ],
      ),
    );
  }

  Widget _mealsNumberPerDay(SetupPersonalInfoCubit cubit) {
    final user = Session().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
      p.userInfo.numOfDailyMeals != c.userInfo.numOfDailyMeals ||
          p.getNoOfDailyMealsState != c.getNoOfDailyMealsState,
      builder: (context, state) {
        if (state.getNoOfDailyMealsState == RequestState.loading ||
            state.getNoOfDailyMealsState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.noOfDailyMeals.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.noOfDailyMeals[index].label,
              onTap: () => cubit
                  .updateSelectedNoOfDailyMeals(state.noOfDailyMeals[index].value),
              isSelected: state.userInfo.numOfDailyMeals == state.noOfDailyMeals[index].value,
            ) ,
          );
        }
      },
    );
  }

  Widget _dietsWidget(SetupPersonalInfoCubit cubit) {
    final user = Session().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
      p.userInfo.diet_id != c.userInfo.diet_id ||
          p.getDietOptionsState != c.getDietOptionsState,
      builder: (context, state) {
        if (state.getDietOptionsState == RequestState.loading ||
            state.getDietOptionsState == RequestState.failure) {
          return const ValuesGridviewShimmer();
        } else {
          return ValuesGridView(
            itemCount: state.diet.length,
            itemBuilder: (_, index) => ValueContainer(
              value: state.diet[index].name,
              onTap: () => cubit
                  .updateDietId(state.diet[index].id),
              isSelected: state.userInfo.diet_id == state.diet[index].id || user?.diet?.id == state.diet[index].id,
            ),
          );
        }
      },
    );
  }


}
