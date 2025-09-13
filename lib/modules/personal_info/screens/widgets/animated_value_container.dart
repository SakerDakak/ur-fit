import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class ValueContainer extends StatelessWidget {
  final dynamic value;
  final bool isSelected;
  final void Function()? onTap;

  const ValueContainer({
    super.key,
    required this.value,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColor : Co.cardColor,
          borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: value is num
              ? AnimatedFlipCounter(
                  value: value,
                  textStyle: TStyle.semiBold_16.copyWith(
                    color: isSelected
                        ? Co.selectedFont
                        : Co.fontColor,
                  ),
                )
              : Text(
                  value,
                  style: TStyle.semiBold_16.copyWith(
                    color: isSelected
                        ? Co.selectedFont
                        : Co.fontColor,
                  ),
                ),
        ),
      ),
    );
  }
}
