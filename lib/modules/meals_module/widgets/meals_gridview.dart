import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';

import 'meals_grid_item.dart';
import 'shimmer/meals_grid_shimmer.dart';

class MealsGridview extends StatelessWidget {
  const MealsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsCubit, MealsState>(
      buildWhen: (previous, current) =>
          previous.getAllMealsState != current.getAllMealsState ||
          previous.allMeals != current.allMeals,
      builder: (context, state) {
        // حالة التحميل
        if (state.getAllMealsState == RequestState.loading) {
          return const MealsGridShimmer();
        }

        // حالة الفشل
        if (state.getAllMealsState == RequestState.failure) {
          return Padding(
            padding: EdgeInsets.all(16.px),
            child: FailureWidget(
              message: state.errMessage.isNotEmpty
                  ? state.errMessage
                  : L10n.tr().somethingWentWrong,
              onRetry: () => context.read<MealsCubit>().searchMeals(),
            ),
          );
        }

        // حالة عدم وجود محتوى
        if (state.allMeals.isEmpty) {
          return Padding(
            padding: EdgeInsets.all(16.px),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant_menu,
                    size: 64,
                    color: Colors.grey[600],
                  ),
                  SizedBox(height: 16.px),
                  Text(
                    L10n.tr().noMealsFound,
                    style: TStyle.semiBold_16,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.px),
                  Text(
                    L10n.tr().tryDifferentFilters,
                    style: TStyle.regular_14.copyWith(
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        // عرض الوجبات
        return Padding(
          padding: EdgeInsets.all(16.px),
          child: GridView.builder(
            itemCount: state.allMeals.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 109 / 144.14,
                crossAxisSpacing: 8.px,
                mainAxisSpacing: 8.px),
            itemBuilder: (BuildContext context, int index) {
              return MealsGridItem(meal: state.allMeals[index]);
            },
          ),
        );
      },
    );
  }
}
