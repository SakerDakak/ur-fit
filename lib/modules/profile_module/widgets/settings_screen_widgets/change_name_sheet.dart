import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/shared/widgets/compact_form_field.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../../auth_module/bloc/authentication_bloc.dart';

class ChangeNameSheet extends StatelessWidget {
  const ChangeNameSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // drag handle
            Container(
              height: 4,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: AppColors.cardInputStrock,
              ),
            ),

            // close button
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: SizedBox(
                height: 25,
                width: 25,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                    visualDensity: VisualDensity.comfortable,
                    elevation: 4,
                    shadowColor: Colors.black,
                    backgroundColor: AppColors.whiteColor,
                  ),
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.backGround,
                    size: 20,
                  ),
                ),
              ),
            ),

            // title icon
            SvgPicture.asset(
              AppAssets.iconsProfile,
              height: 24,
              colorFilter: const ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),

            const SizedBox(height: 8),

            // title
            Text(
              'تغير الاسم',
              style: CustomTextStyle.bold_16.copyWith(
                color: AppColors.primaryColor,
              ),
            ),

            const SizedBox(height: 12),

            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'الاسم كامل',
                style: CustomTextStyle.regular_14.copyWith(
                  color: AppColors.selectedFont,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // name text field
            CompactTextFormField(
              hintText: 'الاسم',
              initialValue: user?.name.toString(),
              padding: EdgeInsets.zero,
              borderColor: AppColors.strockColor,
              style: CustomTextStyle.regular_14.copyWith(
                color: AppColors.selectedFont,
              ),
            ),

            const SizedBox(height: 12),

            // confirm button
            CustomElevatedButton(
              text: 'تاكيد',
              onPressed: () {},
              padding: EdgeInsets.zero,
            ),

            SizedBox(height: 20 + MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
    );
  }
}
