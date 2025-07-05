import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
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
              color: Co.fontColor,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'برامج غذائية متكاملة مخصصة لاحتياجات جسمك.',
                style: TStyle.bold_16,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
