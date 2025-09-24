import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/adaptive_progress_indicator.dart';
import 'package:urfit/core/presentation/views/widgets/custom_appbar.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meal_component_widget.dart';
import 'package:urfit/modules/meals_module/widgets/meal_description.dart';
import 'package:urfit/modules/meals_module/widgets/meal_properties.dart';

import '../../../core/presentation/utils/enums.dart';

class MealDetailsScreen extends StatelessWidget {
  final int id;
  static const routeWzId = '/mealsDetailsScreen';

  const MealDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<MealsCubit>().getMealDetails(id);
    final user = Session().currentUser;

    // الاستماع لتغيير اللغة وإعادة تحميل البيانات
    return BlocListener<AppCubit, AppState>(
      listener: (context, appState) {
        // عند تغيير اللغة، إعادة تحميل بيانات الوجبة
        if (user?.haveMealPlan == true && user?.hasValidSubscription == true) {
          context.read<MealsCubit>().getMealDetails(id);
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(
            title: L10n.tr().mealDetails,
            onBack: () {
              context.pop();
              // context.read<MealsCubit>().clearMealDetails();
            }),
        body: SafeArea(
          child: BlocBuilder<MealsCubit, MealsState>(
            buildWhen: (p, c) =>
                p.mealDetails != c.mealDetails ||
                p.getMealDetailsState != c.getMealDetailsState,
            builder: (context, state) {
              if (state.getMealDetailsState == RequestState.loading ||
                  state.getMealDetailsState == RequestState.failure) {
                // return const ValuesGridviewShimmer();
                return const Center(child: AdaptiveProgressIndicator());
              } else {
                final meal = state.mealDetails!;
                final kcal = meal.nutrition.nutrients.first.amount;
                final readyInMinutes = meal.readyInMinutes;
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.px),
                        child: Center(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            meal.image.toString(),
                            height: 290.px,
                            fit: BoxFit.fill,
                          ),
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
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 18.px,
                      ),
                      MealProperties(
                        readyInMinutes: readyInMinutes,
                        kcal: kcal,
                      ),
                      SizedBox(
                        height: 24.px,
                      ),
                      BlocBuilder<MealsCubit, MealsState>(
                        buildWhen: (previous, current) =>
                            previous.nutritionData != current.nutritionData,
                        builder: (context, state) {
                          final isMealSelected = state.nutritionData
                              .any((data) => data.id == meal.id.toString());
                          return CustomElevatedButton(
                              text: isMealSelected
                                  ? L10n.tr().mealAlreadySelected
                                  : L10n.tr().selectMeal,
                              onPressed: isMealSelected
                                  ? null
                                  : () async {
                                      try {
                                        final calories = meal
                                            .nutrition.nutrients
                                            .firstWhere(
                                                (nut) => nut.name == "Calories")
                                            .amount;
                                        final carbohydrates = meal
                                            .nutrition.nutrients
                                            .firstWhere((nut) =>
                                                nut.name == "Carbohydrates")
                                            .amount;
                                        final protein = meal.nutrition.nutrients
                                            .firstWhere(
                                                (nut) => nut.name == "Protein")
                                            .amount;

                                        await context
                                            .read<MealsCubit>()
                                            .addMealNutrients(
                                                mealId: meal.id.toString(),
                                                calories: calories,
                                                carb: carbohydrates,
                                                protein: protein);

                                        // إظهار رسالة تأكيد للمستخدم
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(L10n.tr()
                                                  .mealSelectedSuccessfully),
                                              backgroundColor: Colors.green,
                                              duration:
                                                  const Duration(seconds: 2),
                                            ),
                                          );
                                        }
                                      } catch (e) {
                                        // إظهار رسالة خطأ في حالة فشل العملية
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                  '${L10n.tr().errorSelectingMeal}: $e'),
                                              backgroundColor: Colors.red,
                                              duration:
                                                  const Duration(seconds: 3),
                                            ),
                                          );
                                        }
                                      }
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
                        child: const Divider(),
                      ),
                      const SizedBox(height: 12),
                      MealComponentWidget(
                        ingredients: meal.extendedIngredients,
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
