import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_appbar.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meal_component_widget.dart';
import 'package:urfit/modules/meals_module/widgets/meal_description.dart';
import 'package:urfit/modules/meals_module/widgets/meal_properties.dart';

import '../../../core/presentation/utils/enums.dart';
import '../../personal_info/widgets/shimmer_widgets/values_gridview_shimmer.dart';

class MealDetailsScreen extends StatelessWidget {
  final int id;
  static const routeWzId = '/mealsDetailsScreen';

  const MealDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<MealsCubit>().getMealDetails(id);
    return Scaffold(
      appBar: CustomAppBar(
          title: 'تفاصيل الوجبة',
          onBack: () {
            context.pop();
            // context.read<MealsCubit>().clearMealDetails();
          }),
      body: SingleChildScrollView(
        child: BlocBuilder<MealsCubit, MealsState>(
          buildWhen: (p, c) =>
              p.mealDetails != c.mealDetails ||
              p.getMealDetailsState != c.getMealDetailsState,
          builder: (context, state) {
            if (state.getMealDetailsState == RequestState.loading ||
                state.getMealDetailsState == RequestState.failure) {
              return const ValuesGridviewShimmer();
            } else {
              final meal = state.mealDetails!;
              final kcal = meal.nutrition.nutrients.first.amount;
              final readyInMinutes = meal.readyInMinutes;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.px,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.px),
                    child: Center(
                        child: Image.network(
                      meal.image.toString(),
                      height: 290.px,
                      fit: BoxFit.fill,
                    )),
                  ),
                  SizedBox(
                    height: 16.px,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.px),
                    child: Text(
                      meal.title.toString(),
                      style: TStyle.semiBold_16,
                    ),
                  ),
                  SizedBox(
                    height: 16.px,
                  ),
                  MealProperties(
                    readyInMinutes: readyInMinutes,
                    kcal: kcal,
                  ),
                  SizedBox(
                    height: 24.px,
                  ),
                  BlocBuilder<MealsCubit, MealsState>(
                    builder: (context, state) {
                      return CustomElevatedButton(
                          text: "اختيار الوجبه",
                          onPressed:state.nutritionData.any((data) => data.id == meal.id.toString()) ? null : () async {
                            final calories = meal.nutrition.nutrients
                                .firstWhere((nut) => nut.name == "Calories")
                                .amount;
                            final carbohydrates = meal.nutrition.nutrients
                                .firstWhere(
                                    (nut) => nut.name == "Carbohydrates")
                                .amount;
                            final protein = meal.nutrition.nutrients
                                .firstWhere((nut) => nut.name == "Protein")
                                .amount;

                           await  context.read<MealsCubit>().addMealNutrients(
                                mealId: meal.id.toString(),
                                calories: calories,
                                carb: carbohydrates,
                                protein: protein);
                          });
                    },
                  ),
                  SizedBox(
                    height: 24.px,
                  ),
                  MealDescription(
                    description: meal.summary,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.px),
                    child: Divider(),
                  ),
                  MealComponentWidget(
                    ingredients: meal.extendedIngredients,
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
