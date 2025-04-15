import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500, minWidth: 500),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF0F8FAB)),
          padding: EdgeInsets.all(12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xFF0F8FAB),
              fontSize: 16.sp,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
