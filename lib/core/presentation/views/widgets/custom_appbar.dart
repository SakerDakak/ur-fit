import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';
import '../../style/fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor,
    this.hasCloseButton = true,
    required this.onBack,
    this.backButtonIcon,
    this.actions = const [],
  });
  final String title;
  final Color? backgroundColor;
  final VoidCallback onBack;
  final Widget? backButtonIcon;
  final bool hasCloseButton;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light, // For iO
        systemNavigationBarColor: Co.backGround,
      ),
      toolbarHeight: AppBar().preferredSize.height + 20,
      centerTitle: true,
      title: Text(
        title,
        style: TStyle.regular_14,
        textAlign: TextAlign.center,
        maxLines: 3,
      ),
      elevation: 0,
      backgroundColor: backgroundColor ?? Colors.transparent, // appbar color.
      leading: hasCloseButton
          ? IconButton(
              // style: IconButton.styleFrom(
              //   padding: EdgeInsets.zero,
              //   alignment: Alignment.center,
              //   side: BorderSide(color: AppColors.greyColor.withValues(alpha: 0.4)),
              // ),
              onPressed: onBack,
              icon: backButtonIcon ??
                  Icon(
                    Icons.arrow_back,
                    size: 24.px,
                  ),
            )
          : const SizedBox.shrink(),
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
