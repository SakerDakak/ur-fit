import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';
import '../widgets/radio_box_with_img.dart';

class UserInfoPreferredMeals extends StatefulWidget {
  const UserInfoPreferredMeals({super.key});

  @override
  State<UserInfoPreferredMeals> createState() => _UserInfoPreferredMealsState();
}

class _UserInfoPreferredMealsState extends State<UserInfoPreferredMeals> {
  late final SetupPersonalInfoCubit cubit;
  final user = Session().currentUser;

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      cubit.getLikedMealsOptions();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => current is MealsLikedStates,
      builder: (context, state) {
        if (state is! MealsLikedStates) return const SizedBox.shrink();
        if (state is MealsLikedError) {
          return FailureWidget(
            message: state.error,
            onRetry: () => cubit.getLikedMealsOptions(),
          );
        }
        final meals = state is! MealsLikedLoaded ? Fakers().selectionModels : state.meals;
        final isAllSelected = state.userInfo.likedMealsIds.length == meals.length;
        return Column(
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
                  // Spacer(),
                  // GestureDetector(
                  //   onTap: () async {
                  //     final res = await showModalBottomSheet<Set<int>>(
                  //       backgroundColor: Colors.white,
                  //       context: context,
                  //       shape: const RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  //       ),
                  //       builder: (ctx) => SeeMoreSheet(
                  //         items: meals.map((e) => (e.id, e.name)).toList(),
                  //         selected: state.userInfo.likedMealsIds,
                  //       ),
                  //     );
                  //     if (res != null) cubit.toggleLikedMeal(0, addSet: res);
                  //   },
                  //   child: Text(
                  //     L10n.tr().seeMore,
                  //     style: TStyle.semiBold_16.copyWith(
                  //       color: cubit.colorScheme.primary,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      if (isAllSelected) {
                        cubit.toggleLikedMeal(0, addSet: {});
                      } else {
                        cubit.toggleLikedMeal(0, addSet: state.meals.map((e) => e.id).toSet());
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      isAllSelected ? L10n.tr().unselectAll : L10n.tr().selectAll,
                      style: TStyle.bold_16.copyWith(
                        color: isAllSelected
                            ? cubit.colorScheme.tertiary
                            : cubit.colorScheme.primary,
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Animate(
                effects: const [FadeEffect()],
                child: RefreshIndicator(
                  onRefresh: () async {
                    await cubit.getLikedMealsOptions();
                  },
                  child: Skeletonizer(
                    enabled: state is MealsLikedLoading,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: meals.length,
                      itemBuilder: (context, index) => RadioBoxWithImage(
                          title: meals[index].name,
                          imageUrl: meals[index].image ?? "",
                          onTap: () => cubit.toggleLikedMeal(meals[index].id),
                          isSelected: state.userInfo.likedMealsIds.contains(meals[index].id)),
                    ),
                  ),
                ),
              ),
            ),

            // continue button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CustomElevatedButton(
                text: L10n.tr().continuee,
                padding: EdgeInsets.zero,
                onPressed: state.userInfo.likedMealsIds.isNotEmpty
                    ? () {
                        cubit.nextPage();
                      }
                    : null,
              ),
            ),
          ],
        );
      },
    );
  }
}
