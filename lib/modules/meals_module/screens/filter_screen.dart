import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/custom_appbar.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/range_bar.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/filter_title_widget.dart';
import 'package:urfit/modules/meals_module/widgets/meals_toggle_buttons.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  static const route = '/filterScreen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  void initState() {
    super.initState();
    // تحميل الإعدادات المحفوظة عند فتح الصفحة
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MealsCubit>().loadSavedFilters();
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MealsCubit>();
    final category = [
      L10n.tr().breakFast,
      L10n.tr().lunch,
      L10n.tr().dinner,
    ];
    final difficulty = [
      L10n.tr().complicatedPreparation,
      L10n.tr().mediumPreparation,
      L10n.tr().easyPreparation,
    ];
    final components = [
      L10n.tr().oatmeal,
      L10n.tr().eggs,
      L10n.tr().vegetables,
      L10n.tr().fruits,
      L10n.tr().salads,
      L10n.tr().soups,
      L10n.tr().grilledFoods,
      L10n.tr().proteins,
      L10n.tr().poultry,
    ];
    return Scaffold(
      appBar: CustomAppBar(
          title: L10n.tr().filter,
          onBack: () {
            context.pop();
          }),
      body: Column(
        children: [
          FilterTitleWidget(
            icon: AssetsManager.mealCategory,
            title: L10n.tr().mealCategory,
          ),
          SizedBox(
            height: 16.px,
          ),
          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              return MealsToggleButtons(
                initialIndex: state.currentTypeIndex,
                items: category,
                canSelectMultiple: false,
                onSelected: (List<bool> selected) {
                  final int selectedIndex =
                      selected.indexWhere((index) => index == true);
                  cubit.updateSearchType(selectedIndex);
                },
              );
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          FilterTitleWidget(
            icon: AssetsManager.time,
            title: L10n.tr().mealPreparationTime,
          ),
          SizedBox(
            height: 22.px,
          ),
          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              return RangeBar(
                isSingle: false,
                maxRange: 60,
                initialValues: [
                  state.searchRecipeModel.maxReadyTime?.toDouble() ?? 60
                ],
                onChanged: (int handlerIndex, lowerValue, upperValue) {
                  context.read<MealsCubit>().updateMaxReadyTime(lowerValue);
                },
                minRange: 10,
                title: L10n.tr().minutes,
              );
            },
          ),
          FilterTitleWidget(
            icon: AssetsManager.meals,
            title: L10n.tr().mealComponents,
          ),
          SizedBox(
            height: 16.px,
          ),
          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              return MealComponentsGrid(
                items: components,
                initialSelected: state.selectedComponents,
                onSelected: (List<String> selected) {
                  context.read<MealsCubit>().updateSelectedComponents(selected);
                },
              );
            },
          ),
          SizedBox(
            height: 4.px,
          ),
          FilterTitleWidget(
            icon: AssetsManager.calories,
            title: L10n.tr().calories,
          ),
          SizedBox(
            height: 22.px,
          ),
          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              return RangeBar(
                maxRange: 1000,
                initialValues: [
                  state.searchRecipeModel.minCalories?.toDouble() ?? 30,
                  state.searchRecipeModel.maxCalories?.toDouble() ?? 1000,
                ],
                onChanged: (int handlerIndex, lowerValue, upperValue) {
                  context
                      .read<MealsCubit>()
                      .updateMinMaxCalories(lowerValue, upperValue);
                },
                minRange: 30,
                title: L10n.tr().calories,
              );
            },
          ),
          FilterTitleWidget(
            icon: AssetsManager.cooking,
            title: L10n.tr().mealPreperation,
          ),
          SizedBox(
            height: 16.px,
          ),
          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              return MealsToggleButtons(
                initialIndex: 0,
                items: difficulty,
                canSelectMultiple: true,
                initialSelectedItems: state.selectedDifficulties,
                onSelected: (List<bool> selected) {
                  final List<String> selectedDifficulties = [];
                  for (int i = 0; i < selected.length; i++) {
                    if (selected[i]) {
                      selectedDifficulties.add(difficulty[i]);
                    }
                  }
                  context
                      .read<MealsCubit>()
                      .updateSelectedDifficulties(selectedDifficulties);
                },
              );
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          BlocBuilder<MealsCubit, MealsState>(
            builder: (context, state) {
              final isLoading = state.getAllMealsState == RequestState.loading;
              return CustomElevatedButton(
                text: '${L10n.tr().searchResult} ${state.allMeals.length}',
                isLoading: isLoading,
                onPressed: isLoading
                    ? null
                    : () {
                        cubit.searchMeals();
                        context
                            .pop(); // إغلاق صفحة الفلترة والعودة للشاشة السابقة
                      },
              );
            },
          )
        ],
      ),
    );
  }
}
