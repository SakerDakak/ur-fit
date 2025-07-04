import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/pref_utils.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/title_with_icon.dart';
import 'package:urfit/modules/auth/onboarding/choose_country.dart';

import '../../../core/presentation/appCubit/app_cubit.dart';
import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/views/widgets/choose_local_widget.dart';
import '../../../core/presentation/views/widgets/slider_dots.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});
  static const route = "/chooseLang";

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
    Map<String, dynamic> selectedLang = items.first;

    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const IconWithTitle(),
            SizedBox(
              height: 32.px,
            ),
            BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Text(
                  L10n.tr().chooseLang,
                  style: CustomTextStyle.semiBold_16,
                );
              },
            ),
            SizedBox(
              height: 32.px,
            ),
            Expanded(
              child: ChooseLocalWidget(
                items: items,
                onChanged: (dynamic value) {
                  print(value['value']);
                  selectedLang = value;
                  context.read<AppCubit>().changeLang(selectedLang['value']);
                },
              ),
            ),
            SizedBox(
              height: 36.px,
            ),
            BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return CustomElevatedButton(
                    text: L10n.tr().continuee,
                    onPressed: () async {
                      await PrefUtils().setLang(selectedLang['value']);
                      if (context.mounted) context.push(ChooseCountry.route);
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
    );
  }
}
