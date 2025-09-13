import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';

class ChangeNameSheet extends StatefulWidget {
  const ChangeNameSheet({super.key});

  @override
  State<ChangeNameSheet> createState() => _ChangeNameSheetState();
}

class _ChangeNameSheetState extends State<ChangeNameSheet> {
  final nameController = TextEditingController(text: Session().currentUser?.name);

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                color: Co.cardInputStrock,
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
                    backgroundColor: Co.whiteColor,
                  ),
                  icon: const Icon(
                    Icons.close,
                    color: Co.backGround,
                    size: 20,
                  ),
                ),
              ),
            ),

            // title icon
            SvgPicture.asset(
              Assets.iconsProfile,
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),

            const SizedBox(height: 8),

            // title
            Text(
              L10n.tr().changeName,
              style: TStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 12),

            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                L10n.tr().fullName,
                style: TStyle.regular_14.copyWith(
                  color: Co.selectedFont,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // name text field
            CompactTextFormField(
              controller: nameController,
              hintText: L10n.tr().fullName,
              padding: EdgeInsets.zero,
              borderColor: Co.strockColor,
              style: TStyle.regular_14.copyWith(
                color: Co.selectedFont,
              ),
            ),

            const SizedBox(height: 12),

            // confirm button
            CustomElevatedButton(
              text: L10n.tr().confirm,
              onPressed: () async {
                if (nameController.text.trim().length < 3) return;
                final name = nameController.text.trim();
                context.pop(name);
              },
              padding: EdgeInsets.zero,
            ),

            SizedBox(height: 20 + MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
    );
  }
}
