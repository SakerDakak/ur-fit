import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 16.px),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
          ),
          child: Text(
            text,
            style: CustomTextStyle.semiBold_16,
          ),
        ),
      ),
    );
  }
}
