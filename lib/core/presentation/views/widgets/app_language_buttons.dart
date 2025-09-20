import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

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
          const SizedBox(width: 4),
          BlocSelector<AppCubit, AppState, bool>(
            selector: (state) => state.currentLocal == 'ar',
            builder: (context, bool isArabic) {
              return GestureDetector(
                onTap: () {
                  context.read<AppCubit>().changeLang('ar');
                },
                child: _LanguageButton(
                  isSelected: isArabic,
                  langName: 'عربى',
                ),
              );
            },
          ),
          const SizedBox(width: 4),
          BlocSelector<AppCubit, AppState, bool>(
            selector: (state) => state.currentLocal == 'en',
            builder: (context, bool isEnglish) {
              return GestureDetector(
                onTap: () {
                  context.read<AppCubit>().changeLang('en');
                },
                child: _LanguageButton(
                  isSelected: isEnglish,
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
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              langName,
              style: TStyle.bold_12.copyWith(
                color: isSelected ? Co.selectedFont : Co.fontColor,
              ),
            ),
            if (isSelected) const SizedBox(width: 16),
            if (isSelected)
              const Icon(
                Icons.check,
                color: Co.selectedFont,
                size: 12,
              ),
          ],
        ),
      ),
    );
  }
}
