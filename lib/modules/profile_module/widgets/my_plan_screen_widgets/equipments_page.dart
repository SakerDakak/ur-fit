import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/routes/routes.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../../../core/shared/widgets/equipment_list.dart';
import '../../../auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';

class EquipmentsPage extends StatelessWidget {
  const EquipmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getEquipments();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'اختيار المعدات؟ ',
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 20),

          Expanded(
            child: EquipmentList(cubit: cubit,),
          ),

          const SizedBox(height: 20),

          // continue button
          CustomElevatedButton(
            text: 'تاكيد تحديث الخطة',
            padding: EdgeInsets.zero,
            onPressed: () => GoRouter.of(context).pushReplacement(
              Routes.loadingPlanScreen,
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _EquipmentItem extends StatelessWidget {
  const _EquipmentItem({
    required this.isSelected,
    required this.onTap,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(kBorderRadius),
          border: Border.all(color: AppColors.strockColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            // workout image
            PositionedDirectional(
              top: -10,
              start: -5,
              bottom: -10,
              child: _equipmentImage(context),
            ),

            // workout title and start button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 88),

                  // meal name
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyle.bold_16.copyWith(shadows: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ]),
                    ),
                  ),

                  // radio button
                  Radio(
                    toggleable: true,
                    value: isSelected,
                    groupValue: true,
                    onChanged: (value) {
                      onTap();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _equipmentImage(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xff484848),
        ),
        const CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xff575757),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).colorScheme.primary,
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
      ],
    );
  }
}
