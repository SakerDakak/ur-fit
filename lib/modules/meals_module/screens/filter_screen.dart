import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/core/shared/widgets/custom_appbar.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/shared/widgets/range_bar.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/filter_title_widget.dart';
import 'package:urfit/modules/meals_module/widgets/meals_toggle_buttons.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const route = '/filterScreen';

  @override
  Widget build(BuildContext context) {
    final category = ["فطار", "غداء", "عشاء"];
    final difficulty = ['سهلة التحضير', 'متوسطة', 'صعبة التحضير'];
    final components = [
      'شوفان',
      'بيض',
      'خضراوات',
      'فواكه',
      'سلطات',
      'شوربات',
      'مشويات',
      'بروتينات',
      'دواجن'
    ];
    return Scaffold(
      appBar: CustomAppBar(
          title: 'فلتر',
          onBack: () {
            context.pop();
          }),
      body: Column(
        children: [
          FilterTitleWidget(
            icon: AssetsManager.mealCategory,
            title: 'نوع الوجبة',
          ),
          SizedBox(
            height: 16.px,
          ),
          MealsToggleButtons(
            initialIndex: 0,
            items: category,
            canSelectMultiple: false,
            onSelected: (List<bool> selected) {},
          ),
          SizedBox(
            height: 16.px,
          ),
          FilterTitleWidget(
            icon: AssetsManager.time,
            title: 'مدة تحضير الوجبة',
          ),
          SizedBox(
            height: 16.px,
          ),
          RangeBar(
            isSingle: false,
            maxRange: 60,
            initialValues: [20],
            onChanged: (int handlerIndex, lowerValue, upperValue) {
              context.read<MealsCubit>().updateMaxReadyTime(lowerValue);
            },
            minRange: 10,
            title: 'دقيقة',
          ),
          FilterTitleWidget(
            icon: AssetsManager.meals,
            title: 'مكونات الوجبة',
          ),
          SizedBox(
            height: 16.px,
          ),
          MealComponentsGrid(
            items: components,
            onSelected: (List<String> selected) {},
          ),
          SizedBox(
            height: 16.px,
          ),
          FilterTitleWidget(
            icon: AssetsManager.calories,
            title: 'السعرات الحرارية',
          ),
          SizedBox(
            height: 16.px,
          ),
          RangeBar(
            maxRange: 1000,
            initialValues: [50, 200],
            onChanged: (int handlerIndex, lowerValue, upperValue) {
              context
                  .read<MealsCubit>()
                  .updateMinMaxCalories(lowerValue, upperValue);
            },
            minRange: 30,
            title: 'سعر حرارى',
          ),
          FilterTitleWidget(
            icon: AssetsManager.cooking,
            title: 'تحضير الوجبة',
          ),
          SizedBox(
            height: 16.px,
          ),
          MealsToggleButtons(
            initialIndex: 0,
            items: difficulty,
            canSelectMultiple: true,
            onSelected: (List<bool> selected) {
              final List<String> ingredients = [];
              for (int i = 0; i < selected.length; i++) {
                if (selected[i]) {
                  ingredients.add(ingredients[i]);
                }
              }
              context.read<MealsCubit>().updateIncludedIngredients(ingredients);
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          BlocSelector<MealsCubit, MealsState, int>(
            selector: (state) => state.allMeals.length,
            builder: (context, mealsLength) {
              return CustomElevatedButton(
                  text: 'نتائج للبحث ${mealsLength == 0 ? '' : mealsLength}', onPressed: () {});
            },
          )
        ],
      ),
    );
  }
}
