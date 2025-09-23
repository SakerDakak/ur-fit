import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/modules/meals_module/screens/meal_details_screen.dart';

import '../data/models/meal_model.dart';

class MealsGridItem extends StatelessWidget {
  final MealModel meal;
  const MealsGridItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(MealDetailsScreen.routeWzId,
            pathParameters: {'id': meal.id.toString()});
      },
      child: GridTile(
        footer: Container(
          height: 66.px,
          decoration: BoxDecoration(
              color: Co.cardColor,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(8.px))),
          child: Padding(
            padding: EdgeInsets.all(4.px),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  meal.title.toString(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TStyle.semiBold_14,
                  minFontSize: 10,
                ),
                const Spacer(),
                Text(
                    "${meal.nutrition?.nutrients.first.amount} ${L10n.tr().calorie}")

                // Text('١٥ دقيقة'),
              ],
            ),
          ),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.px),
            child: Image.network(
              meal.image.toString(),
              fit: BoxFit.fitHeight,
              height: 100.px,
            )),
      ),
    );
  }
}
