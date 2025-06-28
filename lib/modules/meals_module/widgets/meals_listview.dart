import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/modules/meals_module/screens/meal_details_screen.dart';
import 'package:urfit/modules/meals_module/screens/meals_picker_screen.dart';
import 'package:urfit/modules/meals_module/widgets/daily_meals_list_item.dart';

import '../../../generated/locale_keys.g.dart';
import '../controller/meals_cubit.dart';

class MealsListview extends StatelessWidget {
  const MealsListview({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MealsCubit>();
    final day = cubit.getPlanForToday();
    final List<Map<String, dynamic>> dailyMealsListItem = [
      {
        "title": LocaleKeys.breakFast.tr(),
        "img": Assets.imageBreakFast,
        "onTap": () {
          context.pushNamed(MealDetailsScreen.routeWzId, pathParameters: {"id": day!.meals[0].recipe_id.toString()});
        }
      },
      {
        "title": LocaleKeys.lunch.tr(),
        "img": Assets.imageLunch,
        "onTap": () {
          context.pushNamed(MealDetailsScreen.routeWzId, pathParameters: {"id": day!.meals[1].recipe_id.toString()});
        }
      },
      {
        "title": LocaleKeys.dinner.tr(),
        "img": Assets.imageDinner,
        "onTap": () {
          context.pushNamed(MealDetailsScreen.routeWzId, pathParameters: {"id": day!.meals[2].recipe_id.toString()});
        }
      },
      {
        "title": LocaleKeys.otherMeals.tr(),
        "img": Assets.imageAllMeals,
        "onTap": () {
          context.pushNamed(MealsPickerScreen.route);
        }
      },
    ];
    return ListView.builder(
      itemCount: dailyMealsListItem.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DailyMealsListItem(
          title: dailyMealsListItem[index]['title'],
          img: dailyMealsListItem[index]['img'],
          onTap: dailyMealsListItem[index]['onTap']),
    );
  }
}
