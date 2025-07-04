import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class NutritionAndBurnedCalories extends StatelessWidget {
  const NutritionAndBurnedCalories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.iconsSpoonFork,
              height: 18,
              colorFilter:  ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'التغذية',
              style: CustomTextStyle.bold_14,
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '100',
                  style: CustomTextStyle.bold_14,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'سعر حرارى',
              style: CustomTextStyle.bold_14.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        // Burning calories
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.iconsFlam,
              height: 18,
              colorFilter:  ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'الحرق',
              style: CustomTextStyle.bold_14,
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '300',
                  style: CustomTextStyle.bold_14,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'سعر حرارى',
              style: CustomTextStyle.bold_14.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
