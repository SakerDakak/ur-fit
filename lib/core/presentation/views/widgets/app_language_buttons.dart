import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class AppLanguageButtons extends StatelessWidget {
  const AppLanguageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppCubit, AppState, String>(
      selector: (state) => state.currentLocal,
      builder: (context, String currentLang) {
        return GestureDetector(
          onTap: () {
            // تبديل اللغة: إذا كانت العربية تصبح إنجليزية والعكس
            final newLang = currentLang == 'ar' ? 'en' : 'ar';
            context.read<AppCubit>().changeLang(newLang);
          },
          child: _LanguageButton(
            langName: currentLang == 'ar' ? 'عربى' : 'EN',
            isArabic: currentLang == 'ar',
          ),
        );
      },
    );
  }
}

class _LanguageButton extends StatelessWidget {
  const _LanguageButton({
    required this.langName,
    required this.isArabic,
  });

  final String langName;
  final bool isArabic;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 36,
      height: 24,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          langName,
          style: TStyle.bold_12.copyWith(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
