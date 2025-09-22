import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';

import '../../../core/presentation/views/widgets/selection_item_model_list.dart';

class UserInfoEquipmentScreen extends StatefulWidget {
  const UserInfoEquipmentScreen({super.key});
  static const route = '/EquipmentSelectionScreen';
  @override
  State<UserInfoEquipmentScreen> createState() =>
      _UserInfoEquipmentScreenState();
}

class _UserInfoEquipmentScreenState extends State<UserInfoEquipmentScreen> {
  late final SetupPersonalInfoCubit cubit;

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    context.read<SetupPersonalInfoCubit>().getEquipments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => current is EquipmentsStates,
      builder: (context, state) {
        if (state is! EquipmentsStates) return const SizedBox.shrink();
        if (state is EquipmentsError) {
          return FailureWidget(
            message: state.error,
            onRetry: () => cubit.getEquipments(),
          );
        }
        final equipments = state is EquipmentsLoading
            ? Fakers().selectionModels
            : state.equipments;
        return Skeletonizer(
            enabled: state is EquipmentsLoading,
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  L10n.tr().chooseEquipments,
                  textAlign: TextAlign.center,
                  style: TStyle.bold_16.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),

                // continue button
                Expanded(
                  child: SelectionItemModelList(
                    items: equipments,
                    selectedItems: state.userInfo.equipmentsIds,
                    onTap: (item) {
                      cubit.toggleEquipment(item.id);
                    },
                  ),
                ),
                BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
                  buildWhen: (previous, current) =>
                      current is UpdateUserInfoStates,
                  builder: (context, state) {
                    if (state is UpdateInfoLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return CustomElevatedButton(
                      text: L10n.tr().continuee,
                      padding: EdgeInsets.zero,
                      onPressed: state.userInfo.equipmentsIds.isEmpty
                          ? null
                          : () async {
                              // الانتقال إلى الخطوة التالية
                              cubit.nextPage();
                            },
                    );
                  },
                ),
                const SizedBox(height: 12),
              ],
            ));
      },
    );
  }
}
