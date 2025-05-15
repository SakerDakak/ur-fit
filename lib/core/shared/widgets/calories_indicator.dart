import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/enums.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';

class CaloriesIndicator extends StatelessWidget {
  const CaloriesIndicator({
    super.key,
    required this.calories,
    required this.title,
  });

  final double calories;
  final String title;

  @override
  Widget build(BuildContext context) {
    // final user = context.read<AuthenticationBloc>().currentUser;
    return FittedBox(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SvgPicture.asset(
            Theme.of(context).colorScheme.primary == AppColors.primaryColor ?  AppAssets.imageCaloriesIndicator : AppAssets.imageCaloriesIndicatorFemale,
            width: 185,
          ),
          SizedBox(
            width: 120,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppAssets.iconsFlam,
                        width: 10,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        calories.toStringAsFixed(0),
                        style: CustomTextStyle.regular_14.copyWith(
                          color: AppColors.fontColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: CustomTextStyle.regular_14.copyWith(
                      color: AppColors.fontColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
