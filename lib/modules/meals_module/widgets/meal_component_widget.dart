import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/assets_manager.dart';
import '../data/models/meal_details_model.dart';
import 'filter_title_widget.dart';
import 'meal_component_item.dart';

class MealComponentWidget extends StatelessWidget {
  final List<Ingredient> ingredients;
  const MealComponentWidget({
    super.key, required this.ingredients
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterTitleWidget(icon: AssetsManager.meals, title: 'مكونات الوجبة'),
        ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 16.px),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: ingredients.length,
          itemBuilder: (BuildContext context, int index) {
            return  ComponentItem(ingredient: ingredients[index]);
          },
        ),
      ],
    );
  }
}
