import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/data/models/meal_model.dart';

import 'meals_grid_item.dart';

class MealsGridview extends StatelessWidget {
  const MealsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.px),
      child: BlocSelector<MealsCubit, MealsState, List<MealModel>>(
        selector: (state) => state.allMeals,
        builder: (context, meals) {
          return GridView.builder(
            itemCount: meals.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 109 / 144.14,
                crossAxisSpacing: 8.px,
                mainAxisSpacing: 8.px),
            itemBuilder: (BuildContext context, int index) {
              return  MealsGridItem(meal: meals[index],);
            },
          );
        },
      ),
    );
  }
}
