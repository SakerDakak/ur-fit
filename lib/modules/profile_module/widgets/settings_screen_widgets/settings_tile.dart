import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    required this.svgIconPath,
    required this.onTap,
  });

  final String title;
  final String svgIconPath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 4,
          left: 4,
          right: 4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 22,
                  width: 22,
                  child: SvgPicture.asset(
                    svgIconPath,
                    colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyle.regular_14,
                  ),
                ),
                const Icon(
                  Icons.expand_more,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
            const Divider(
              color: AppColors.strockColor,
            )
          ],
        ),
      ),
    );
  }
}
