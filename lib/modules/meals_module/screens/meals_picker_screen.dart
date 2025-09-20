import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/custom_appbar.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/screens/filter_screen.dart';
import 'package:urfit/modules/meals_module/widgets/meals_gridview.dart';
import 'package:urfit/modules/meals_module/widgets/meals_toggle_buttons.dart';

import '../../../core/presentation/style/colors.dart';

class MealsPickerScreen extends StatelessWidget {
  const MealsPickerScreen({super.key});
  static const route = '/mealsGridViewScreen';

  @override
  Widget build(BuildContext context) {
    context.read<MealsCubit>().searchMeals();
    final List<String> items = [L10n.tr().breakFast, L10n.tr().lunch, L10n.tr().dinner];
    return Scaffold(
      appBar: CustomAppBar(
          title: L10n.tr().nutritions,
          onBack: () {
            context.pop();
          }),
      backgroundColor: Co.backGround,
      body: Column(
        children: [
          SizedBox(
            height: 16.px,
          ),
          MealsToggleButtons(
            items: items,
            initialIndex: 0,
            canSelectMultiple: false,
            onSelected: (List<bool> selected) {
              print(selected);
              final int selectedIndex = selected.indexWhere((index) => index == true);
              context.read<MealsCubit>().updateSearchType(selectedIndex);
            },
          ),
          SizedBox(
            height: 24.px,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.px),
            child: Row(
              children: [
                SvgPicture.asset(AssetsManager.mealCategory),
                BlocSelector<MealsCubit, MealsState, int>(
                  selector: (state) => state.currentTypeIndex,
                  builder: (context, index) {
                    return Text(items[index]);
                  },
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {
                      context.pushNamed(FilterScreen.route);
                    },
                    child: SvgPicture.asset(AssetsManager.filter)),
              ],
            ),
          ),
          SizedBox(
            height: 16.px,
          ),
          const Expanded(child: MealsGridview()),
        ],
      ),
    );
  }
}
