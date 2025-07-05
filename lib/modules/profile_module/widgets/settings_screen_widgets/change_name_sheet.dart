
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';


class ChangeNameSheet extends StatelessWidget {
  const ChangeNameSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.kHorizontalPadding,
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
                borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
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
              Assets.iconsProfile,
              height: 24,
              colorFilter:  ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),

            const SizedBox(height: 8),

            // title
            Text(
              L10n.tr().changeName,
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 12),

            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                L10n.tr().fullName,
                style: CustomTextStyle.regular_14.copyWith(
                  color: AppColors.selectedFont,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // name text field
            CompactTextFormField(
              hintText: L10n.tr().fullName,
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
              text: L10n.tr().confirm,
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
