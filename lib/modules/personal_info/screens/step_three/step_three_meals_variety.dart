import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';

import '../../../../core/presentation/assets/assets_manager.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';
import '../widgets/animated_value_container.dart';
import '../widgets/values_gridview.dart';

class StepThreeMealsVariety extends StatelessWidget {
  const StepThreeMealsVariety({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getMealVariantsOptions();
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            L10n.tr().mealsVerity,
            style: TStyle.semiBold_16,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 16),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 140,
                backgroundColor: const Color(
                  0xff484848,
                ).withValues(alpha: 0.7),
              ),
              const CircleAvatar(
                radius: 110,
                backgroundColor: Color(0xff575757),
              ),
              CircleAvatar(
                radius: 90,
                backgroundColor: const Color(0xff575757),
                backgroundImage: AssetImage(AssetsManager.foodVarient),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
            buildWhen: (previous, current) => current is MealVariantsStates,
            builder: (context, state) {
              if (state is! MealVariantsStates) return const SizedBox.shrink();
              if (state is MealVariantsError) {
                return FailureWidget(
                  message: state.error,
                  onRetry: () => cubit.getMealVariantsOptions(),
                );
              }
              final mealVariants = state is MealVariantsLoading ? Fakers().selectionModels : state.mealVariants;
              return Column(
                children: [
                  Skeletonizer(
                    enabled: state is MealVariantsLoading,
                    child: ValuesGridView(
                      itemCount: mealVariants.length,
                      itemBuilder: (_, index) => ValueContainer(
                        value: mealVariants[index].name,
                        onTap: () => cubit.updateMealVariant(mealVariants[index].id),
                        // cubit.updateSelectedMealsVariants(mealVariants[index].id),
                        isSelected: state.userInfo.mealsVariantsId == mealVariants[index].id,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  CustomElevatedButton(
                      text: L10n.tr().continuee,
                      padding: EdgeInsets.zero,
                      onPressed: state.userInfo.mealsVariantsId == null ? null : () => cubit.nextPage()),
                ],
              );
              // }
            },
          ),

          // continue button
        ],
      ),
    );
  }
}
