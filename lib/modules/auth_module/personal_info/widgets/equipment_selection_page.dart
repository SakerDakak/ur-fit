import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';

import '../../../../core/shared/widgets/equipment_list.dart';
import '../../../subscription_module/data/models/package_model.dart';

class EquipmentSelectionPage extends StatefulWidget {
  const EquipmentSelectionPage({super.key});

  @override
  State<EquipmentSelectionPage> createState() => _EquipmentSelectionPageState();
}

class _EquipmentSelectionPageState extends State<EquipmentSelectionPage> {
  @override
  void initState() {
    context.read<SetupPersonalInfoCubit>().getEquipments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 28),

          // header
          Row(
            children: [
              // back button
              IconButton(
                onPressed: () => cubit.goToPreviousPage(),
                icon: const Icon(Icons.arrow_back),
              ),

              // page title
              Expanded(
                child: Text(
                  LocaleKeys.personalInfo.tr(),
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.bold_16,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Text(
            LocaleKeys.chooseEquipments.tr(),
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 20),

          Expanded(
            child: _buildEquipmentsList(cubit),
          ),

          const SizedBox(height: 20),

          // continue button
          BlocSelector<SetupPersonalInfoCubit, SetupPersonalInfoState, bool>(
  selector: (state) => state.userInfo.selectedGaols.any(
        (e) => e.sectionOneType != null,
  ),
  builder: (context, isSectionTwoSelected) {
    return CustomElevatedButton(
            text: LocaleKeys.createMyPlan.tr(),
            padding: EdgeInsets.zero,
            onPressed: () {
              context.read<SetupPersonalInfoCubit>().updatePersonalData();
              if(isSectionTwoSelected) {
               GoRouter.of(context).push(
                 SubscriptionPlansScreen.routeWzExtra,
                 extra: PlanType.both
               );
             }else{
                GoRouter.of(context).push(
                  SubscriptionPlansScreen.routeWzExtra,
                  extra: PlanType.exercise,
                );
             }
            },
          );
  },
),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildEquipmentsList(SetupPersonalInfoCubit cubit) {
    return EquipmentList(cubit: cubit);
  }
}
