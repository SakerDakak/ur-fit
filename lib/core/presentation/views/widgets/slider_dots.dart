import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';

class SliderDots extends StatelessWidget {
  final int page;
  const SliderDots({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'sliderDot',
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        for (int i = 0; i < 3; i++)
          i == page
              ? const SliderDot(isActive: true)
              : const SliderDot(
                  isActive: false,
                ),
      ]),
    );
  }
}

class SliderDot extends StatelessWidget {
  const SliderDot({
    super.key,
    required this.isActive,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      width: isActive ? 12.px : 12.px,
      height: 12.px,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : Co.greyColor,
        // borderRadius: const BorderRadius.all(Radius.circular(5),),
      ),
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }
}
