import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/shared/widgets/title_with_icon.dart';
import 'package:urfit/generated/locale_keys.g.dart';

import '../../../core/shared/appCubit/app_cubit.dart';
import '../../../core/style/colors.dart';
import '../../../core/shared/widgets/choose_local_widget.dart';
import '../../../core/shared/widgets/slider_dots.dart';
import 'onboardingScreen.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    int _initialPage = 0;
    List<Map<String, dynamic>> items = [
      {
        'name': 'عربى',
        'value': 'ar',
        'icon': AssetsManager.saudiFlag,
      },
      {
        'name': 'English',
        'value': 'en',
        'icon': AssetsManager.americaFlag,
      },
    ];
    Map<String,dynamic> selectedLang = items.first;

    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 77.px,
              ),
              IconWithTitle(),
              SizedBox(
                height: 32.px,
              ),
              BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  return Text(
                    LocaleKeys.chooseLang.tr(),
                    style: CustomTextStyle.semiBold_16,
                  );
                },
              ),
              SizedBox(
                height: 32.px,
              ),
              ChooseLocalWidget(
                items: items,
                onChanged: (dynamic value) {
                  print(value['value']);
                  selectedLang = value;
                  context.read<AppCubit>().changeLang(selectedLang['value']);
                },
              ),
              SizedBox(
                height: 36.px,
              ),
              BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  return CustomElevatedButton(
                      text: LocaleKeys.continuee.tr(),
                      onPressed: () {

                        context
                            .read<AuthenticationBloc>()
                            .add(DoneChooseLanguageEvent(selectedLang['value']));
                      });
                },
              ),
              SizedBox(
                height: 36.px,
              ),
              SliderDots(
                page: _initialPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
