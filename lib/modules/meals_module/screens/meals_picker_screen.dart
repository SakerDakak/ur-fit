import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meals_gridview.dart';
import 'package:urfit/modules/meals_module/widgets/meals_toggle_buttons.dart';
import 'package:urfit/core/shared/widgets/custom_appbar.dart';

import '../../../core/routes/routes.dart';
import '../../../core/style/colors.dart';

class MealsPickerScreen extends StatelessWidget {
  const MealsPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MealsCubit>().searchMeals();
    List<String> items = ["فطار", "غداء", "عشاء"];
    return Scaffold(
      appBar: CustomAppBar(
          title: 'التغذية',
          onBack: () {
            context.pop();
          }),
      backgroundColor: AppColors.backGround,
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
              int selectedIndex = selected.indexWhere((index) => index == true);
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
                Spacer(),
                GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.filterScreen);
                    },
                    child: SvgPicture.asset(AssetsManager.filter)),
              ],
            ),
          ),
          SizedBox(
            height: 16.px,
          ),
          Expanded(child: const MealsGridview()),
        ],
      ),
    );
  }
}
