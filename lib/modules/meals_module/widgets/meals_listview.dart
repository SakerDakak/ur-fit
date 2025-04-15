import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/meals_module/widgets/daily_meals_list_item.dart';

import '../../../core/routes/routes.dart';
import '../../../generated/locale_keys.g.dart';
import '../controller/meals_cubit.dart';

class MealsListview extends StatelessWidget {
  const MealsListview({super.key});


  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MealsCubit>();
    final day = cubit.getPlanForToday();
    final List<Map<String,dynamic>> dailyMealsListItem = [
      {"title" : LocaleKeys.breakFast.tr(),
        "img" : AppAssets.break_fast,
        "onTap" : () {
          context.pushNamed(Routes.mealsDetailsScreen,pathParameters: {"id" : day!.meals[0].recipe_id.toString()});
        }
      },
      {"title" : LocaleKeys.lunch.tr(),
        "img" : AppAssets.lunch,
        "onTap" : () {
          context.pushNamed(Routes.mealsDetailsScreen,pathParameters: {"id" : day!.meals[1].recipe_id.toString()});
        }
      },
      {"title" : LocaleKeys.dinner.tr(),
        "img" : AppAssets.dinner,
        "onTap" : () {
          context.pushNamed(Routes.mealsDetailsScreen,pathParameters: {"id" : day!.meals[2].recipe_id.toString()});
        }
      },
      {"title" : LocaleKeys.otherMeals.tr(),
        "img" : AppAssets.all_meals,
        "onTap" : () {
          context.pushNamed(Routes.mealsGridViewScreen);
        }
      },

    ];
    return ListView.builder(
      itemCount: dailyMealsListItem.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DailyMealsListItem(title: dailyMealsListItem[index]['title'], img: dailyMealsListItem[index]['img'], onTap: dailyMealsListItem[index]['onTap']),
    );
  }

}
