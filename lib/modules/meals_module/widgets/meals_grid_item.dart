import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/modules/meals_module/screens/meal_details_screen.dart';

import '../data/models/meal_model.dart';

class MealsGridItem extends StatelessWidget {
  final MealModel meal;
  const MealsGridItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(MealDetailsScreen.routeWzId,pathParameters: {'id':meal.id.toString()});
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
                Expanded(child: Text(meal.title.toString(),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                Text("السعر ${meal.nutrition?.nutrients.first.amount}")

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
