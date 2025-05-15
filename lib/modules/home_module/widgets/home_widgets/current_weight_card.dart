import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/edit_weight_bottom_sheet.dart';

import '../../../../core/utils/service_locator.dart';
import '../../../../generated/locale_keys.g.dart';

class CurrentWeightCard extends StatelessWidget {
  const CurrentWeightCard({super.key});

  @override
  Widget build(BuildContext context) {
   final user = sl<AuthenticationBloc>().currentUser;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),

          // current and target weight
           FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                WeightInfoItem(
                  title: LocaleKeys.currentWeight.tr(),
                  svgIconPath: AppAssets.iconsWeightIcon,
                  weight: user?.currentWeight?.toDouble() ?? 0,
                ),
                SizedBox(
                  height: 45,
                  child: VerticalDivider(
                    color: AppColors.strockColor,
                    width: 40,
                  ),
                ),
                WeightInfoItem(
                  title: LocaleKeys.goal.tr(),
                  svgIconPath: AppAssets.iconsFlag,
                  weight: user?.targetWeight?.toDouble() ?? 0,
                ),
              ],
            ),
          ),

          // update weight button
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () => _editWeight(context),
              child: Text(
                LocaleKeys.updateWeight.tr(),
                style: CustomTextStyle.regular_14.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _editWeight(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) => const EditWeightBottomSheet(),
    );
  }
}

class WeightInfoItem extends StatelessWidget {
  const WeightInfoItem({
    super.key,
    required this.title,
    required this.svgIconPath,
    required this.weight,
  });

  final String title;
  final String svgIconPath;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgIconPath,
          height: 16,
          width: 16,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomTextStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  weight.toStringAsFixed(0),
                  style: CustomTextStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  LocaleKeys.kg.tr(),
                  style: CustomTextStyle.regular_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
