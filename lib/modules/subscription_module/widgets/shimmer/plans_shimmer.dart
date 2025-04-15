import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../plans_screen_widgets/subscription_plans.dart';

class PlansShimmer extends StatelessWidget {
  const PlansShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: List.generate(
          3,
              (i) => Padding(
            // add padding if index is less than the items (length -1)
            padding: EdgeInsetsDirectional.only(end: i < 2 ? 8 : 0),
            child: PlanCard(
              package: null,
              isSelected:false,
              onTap: () {},
            ),
          ),
        ),
      ),
    ),);
  }
}
