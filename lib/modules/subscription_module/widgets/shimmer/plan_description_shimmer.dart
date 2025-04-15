import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/fonts.dart';
class PlanDescriptionShimmer extends StatelessWidget {
  const PlanDescriptionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(child: ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 4,
              color: AppColors.fontColor,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'برامج غذائية متكاملة مخصصة لاحتياجات جسمك.',
                style: CustomTextStyle.bold_16,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
