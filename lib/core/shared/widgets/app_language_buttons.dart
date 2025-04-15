import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/appCubit/app_cubit.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../utils/service_locator.dart';

class AppLanguageButtons extends StatelessWidget {
  const AppLanguageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        children: [
          Icon(
            Icons.language,
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
          SizedBox(width: 4),
          BlocSelector<AppCubit, AppState, bool>(
            selector: (state) => state.currentLocal == 'ar',
            builder: (context, bool) {
              return GestureDetector(
                onTap: () {
                  context.read<AppCubit>().changeLang('ar');
                },
                child: _LanguageButton(
                  isSelected: bool,
                  langName: 'عربى',
                ),
              );
            },
          ),
          SizedBox(width: 4),
          BlocSelector<AppCubit, AppState, bool>(
            selector: (state) => state.currentLocal == 'en',
            builder: (context, bool) {
              return GestureDetector(
                onTap: () {
                  context.read<AppCubit>().changeLang('en');
                },
                child: _LanguageButton(
                  isSelected: bool,
                  langName: 'English',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _LanguageButton extends StatelessWidget {
  const _LanguageButton({
    required this.isSelected,
    required this.langName,
  });

  final bool isSelected;
  final String langName;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 85,
      height: 28,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              langName,
              style: CustomTextStyle.bold_12.copyWith(
                color:
                    isSelected ? AppColors.selectedFont : AppColors.fontColor,
              ),
            ),
            if (isSelected) const SizedBox(width: 16),
            if (isSelected)
              const Icon(
                Icons.check,
                color: AppColors.selectedFont,
                size: 12,
              ),
          ],
        ),
      ),
    );
  }
}
