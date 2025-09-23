import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/meals_module/screens/meal_details_screen.dart';
import 'package:urfit/modules/meals_module/screens/meals_picker_screen.dart';
import 'package:urfit/modules/meals_module/widgets/daily_meals_list_item.dart';

import '../controller/meals_cubit.dart';
import '../../../core/presentation/app_cubit/app_cubit.dart';

class MealsListview extends StatelessWidget {
  const MealsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
        final cubit = context.read<MealsCubit>();
        final day = cubit.getPlanForToday();
        final dailyMealsListItem = [
          (
            title: L10n.tr().breakFast,
            img: Assets.imageBreakFast,
            onTap: () {
              context.pushNamed(MealDetailsScreen.routeWzId,
                  pathParameters: {"id": day!.meals[0].recipe_id.toString()});
            }
          ),
          (
            title: L10n.tr().lunch,
            img: Assets.imageLunch,
            onTap: () {
              context.pushNamed(MealDetailsScreen.routeWzId,
                  pathParameters: {"id": day!.meals[1].recipe_id.toString()});
            }
          ),
          (
            title: L10n.tr().dinner,
            img: Assets.imageDinner,
            onTap: () {
              context.pushNamed(MealDetailsScreen.routeWzId,
                  pathParameters: {"id": day!.meals[2].recipe_id.toString()});
            },
          ),
          (
            title: L10n.tr().otherMeals,
            img: Assets.imageAllMeals,
            onTap: () {
              context.pushNamed(MealsPickerScreen.route);
            },
          ),
        ];
        return ListView.builder(
          itemCount: dailyMealsListItem.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => DailyMealsListItem(
              title: dailyMealsListItem[index].title,
              img: dailyMealsListItem[index].img,
              onTap: dailyMealsListItem[index].onTap),
        );
      },
    );
  }
}
