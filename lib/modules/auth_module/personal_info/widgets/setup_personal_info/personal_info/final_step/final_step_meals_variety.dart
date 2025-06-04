import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/assets_manager.dart';
import '../../../../../../../core/shared/widgets/custom_buttons.dart';
import '../../../../../../../core/style/fonts.dart';
import '../../../../../../../core/utils/enums.dart';
import '../../../../../../../generated/locale_keys.g.dart';
import '../../../../controller/cubit/setup_personal_info_cubit.dart';
import '../../../shimmer_widgets/values_gridview_shimmer.dart';
import '../../animated_value_container.dart';
import '../../values_gridview.dart';

class FinalStepMealsVariety extends StatelessWidget {
  const FinalStepMealsVariety({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getMealVariantsOptions();
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) =>
      previous.userInfo.mealsVariantsId != current.userInfo.mealsVariantsId,
      builder: (context, state) {
        bool canProssed = state.userInfo.mealsVariantsId != null &&
            state.userInfo.mealsVariantsId! > 0;
        print("canProssed: ${state.userInfo.targetWeight}");
        return Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                LocaleKeys.mealsVerity.tr(),
                style: CustomTextStyle.semiBold_16,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Color(0xff484848,).withValues(alpha: 0.7),
                ),
                CircleAvatar(
                  radius: 110,
                  backgroundColor: const Color(0xff575757),
                ),
                CircleAvatar(
                  radius: 90,
                  backgroundColor: const Color(0xff575757),
                  backgroundImage: AssetImage(AssetsManager.foodVarient),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
              buildWhen: (p, c) =>
              p.userInfo.mealsVariantsId != c.userInfo.mealsVariantsId ||
                  p.getMealVariantsState != c.getMealVariantsState,
              builder: (context, state) {
                if (state.getMealVariantsState == RequestState.loading ||
                    state.getMealVariantsState == RequestState.failure) {
                  return const ValuesGridviewShimmer();
                } else {
                  return ValuesGridView(
                    itemCount: state.mealVariants.length,
                    itemBuilder: (_, index) => ValueContainer(
                      value: state.mealVariants[index].name,
                      onTap: () => cubit.updateSelectedMealsVariants(
                          state.mealVariants[index].id),
                      isSelected: state.userInfo.mealsVariantsId ==
                          state.mealVariants[index].id,
                    ),
                  );
                }
              },
            ),
            SizedBox(
              height: 32,
            ),

            // continue button
            CustomElevatedButton(
              text: LocaleKeys.continuee.tr(),
              padding: EdgeInsets.zero,
              onPressed: canProssed
                  ? () {
                cubit.goToNextIndexFinalStep();
              }
                  : null,
            ),
          ],
        );
      },
    );
  }
}
