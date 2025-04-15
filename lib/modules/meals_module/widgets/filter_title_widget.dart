import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/style/colors.dart';

import '../../../core/style/fonts.dart';

class FilterTitleWidget extends StatelessWidget {
  final String icon;
  final String title;
  const FilterTitleWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            width: 16,
            height: 16,
            colorFilter:
                ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),
          ),
          SizedBox(
            width: 4.px,
          ),
          Text(
            title,
            style: CustomTextStyle.bold_14,
          ),
        ],
      ),
    );
  }
}
