import 'package:flutter/material.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';

import '../../data/models/package_model.dart';

class PlanDescription extends StatelessWidget {
  final List<PackageModel> package;

  const PlanDescription({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: package.length,
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
                'برامج ${package[index].type.name} متكاملة مخصصة لاحتياجات جسمك.',
                style: CustomTextStyle.bold_16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
