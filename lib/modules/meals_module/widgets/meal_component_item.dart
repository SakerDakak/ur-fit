import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/presentation/style/fonts.dart';
import '../data/models/meal_details_model.dart';

class ComponentItem extends StatelessWidget {
  final Ingredient ingredient;
  const ComponentItem({
    super.key,
    required this.ingredient,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image.network(
                        "https://img.spoonacular.com/ingredients_100x100/${ingredient.image}",
                        height: 35.px,
                        width: 35.px,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.center,
                    child: Text(ingredient.name),
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text('${ingredient.amount} ${ingredient.unit}',
                      style: TStyle.regular_16.copyWith(
                          color: Theme.of(context).colorScheme.primary)),
                ),
              )
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
