import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/personal_info/screens/widgets/see_more_sheet.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';
import '../widgets/radio_box_with_img.dart';

class FinalStepNotPreferredMeals extends StatelessWidget {
  const FinalStepNotPreferredMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getNotLikedMealsOptions();

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => current is MealsNotLikedStates,
      builder: (context, state) {
        if (state is! MealsNotLikedStates) return const SizedBox.shrink();
        if (state is MealsNotLikedError) {
          return FailureWidget(
            message: state.error,
            onRetry: () => cubit.getNotLikedMealsOptions(),
          );
        }
        final meals = state is MealsNotLikedLoading ? Fakers().selectionModels : state.meals;
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 32,
                child: Row(
                  children: [
                    Text(
                      L10n.tr().mealsNotLiked,
                      style: TStyle.semiBold_16,
                      textAlign: TextAlign.start,
                    ),
                    const Spacer(),
                    if (meals.length > 4)
                      GestureDetector(
                        onTap: () async {
                          final res = await showModalBottomSheet<Set<int>>(
                            backgroundColor: Colors.white,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            builder: (ctx) => SeeMoreSheet<int>(
                              items: meals.map((e) => (e.id, e.name)).toList(),
                              selected: state.userInfo.notLikedMealsIds,
                            ),
                          );
                          if (res != null) cubit.toggleNotLikedMeal(0, addSet: res);
                        },
                        child: Text(
                          L10n.tr().seeMore,
                          style: TStyle.semiBold_16.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () => cubit.toggleNotLikedMeal(0, addSet: state.meals.map((e) => e.id).toSet()),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        L10n.tr().selectAll,
                        style: TStyle.bold_16.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 16),
              Skeletonizer(
                enabled: state is! MealsNotLikedLoaded,
                child: Animate(
                  effects: const [FadeEffect()],
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: meals.length > 4 ? 4 : meals.length,
                    itemBuilder: (context, index) => RadioBoxWithImage(
                        title: meals[index].name,
                        imageUrl: meals[index].image ?? "",
                        onTap: () => cubit.toggleNotLikedMeal(
                            meals[index].id), //  cubit.updateSelectedNotLikedMeals(meals[index].id),
                        isSelected: state.userInfo.notLikedMealsIds.contains(meals[index].id)),
                  ),
                ),
              ),
              CustomElevatedButton(
                text: L10n.tr().continuee,
                padding: EdgeInsets.zero,
                onPressed: () => cubit.nextPage(),
              ),
            ],
          ),
        );
        // }
      },
    );
  }
}
