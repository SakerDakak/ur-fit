import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/assets_manager.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/fonts.dart';
import '../data/models/meal_details_model.dart';

class ComponentItem extends StatelessWidget {
  final Ingredient ingredient;
  const ComponentItem({
    super.key, required this.ingredient,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45.px,
          child: ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.network(
                  "https://img.spoonacular.com/ingredients_100x100/${ingredient.image}",
                  height: 35.px,
                  width: 35.px,
                  fit: BoxFit.cover,
                )),
            title: Center(child: Text(ingredient.name)),
            trailing: Text('${ingredient.amount} ${ingredient.unit}',
                style: CustomTextStyle.regular_16
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
          ),
        ),
        Divider(),
      ],
    );
  }
}
