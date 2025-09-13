import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class DefaultListTile extends StatelessWidget {
  const DefaultListTile({
    super.key,
    required this.leadingIconSvgPath,
    required this.title,
    this.trailing,
    required this.onTap,
  });

  final String leadingIconSvgPath;
  final String title;
  final Widget? trailing;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
      ),
      leading: SvgPicture.asset(
        leadingIconSvgPath,
        width: 18,
        colorFilter:  ColorFilter.mode(
          Theme.of(context).colorScheme.primary,
          BlendMode.srcIn,
        ),
      ),
      trailing: trailing,
      title: Text(
        title,
        style: TStyle.regular_14,
      ),
    );
  }
}
