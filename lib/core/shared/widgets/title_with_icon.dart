import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/core/style/fonts.dart';

class IconWithTitle extends StatelessWidget {
  const IconWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'URFIT',
              textAlign: TextAlign.center,
              style: CustomTextStyle.semiBold_40,
              // const TextStyle(
              //   fontWeight: FontWeight.bold,
              //   fontSize: 20,
              // ),
            ),
          ),
          Image.asset(
            AssetsManager.mini_logo,
            width: 36.px,
            height: 36.px,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
