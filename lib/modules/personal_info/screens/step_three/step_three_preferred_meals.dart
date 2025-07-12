import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/personal_info/screens/widgets/see_more_sheet.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';
import '../widgets/radio_box_with_img.dart';

class FinalStepPreferredMeals extends StatelessWidget {
  const FinalStepPreferredMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getLikedMealsOptions();
    final user = Session().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => current is MealsLikedStates,
      builder: (context, state) {
        if (state is! MealsLikedStates) return SizedBox.shrink();
        if (state is MealsLikedError) {
          return FailureWidget(
            message: state.error,
            onRetry: () => cubit.getLikedMealsOptions(),
          );
        }
        final meals = state is MealsLikedLoading ? Fakers().selectionModels : state.meals;
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 32,
                child: Row(
                  children: [
                    Text(
                      L10n.tr().mealsYouLike,
                      style: TStyle.semiBold_16,
                      textAlign: TextAlign.start,
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () async {
                        final res = await showModalBottomSheet<Set<int>>(
                          backgroundColor: Colors.white,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (ctx) => SeeMoreSheet(
                            items: meals.map((e) => (e.id, e.name)).toList(),
                            selected: state.userInfo.likedMealsIds,
                          ),
                        );
                        if (res != null) cubit.toggleLikedMeal(0, addSet: res);
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
                      onPressed: () => cubit.toggleLikedMeal(0, addSet: state.meals.map((e) => e.id).toSet()),
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
              Animate(
                effects: const [FadeEffect()],
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.meals.length > 4 ? 4 : state.meals.length,
                  itemBuilder: (context, index) => RadioBoxWithImage(
                      title: state.meals[index].name,
                      imageUrl: state.meals[index].image ?? "",
                      onTap: () => cubit.toggleLikedMeal(state.meals[index].id),
                      isSelected: state.userInfo.likedMealsIds.contains(state.meals[index].id)),
                ),
              ),
              // continue button
              CustomElevatedButton(
                text: L10n.tr().continuee,
                padding: EdgeInsets.zero,
                onPressed: state.userInfo.likedMealsIds.isNotEmpty
                    ? () {
                        cubit.nextPage();
                      }
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
