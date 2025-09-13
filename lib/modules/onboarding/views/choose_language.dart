import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/title_with_icon.dart';
import 'package:urfit/modules/onboarding/views/choose_country.dart';

import '../../../core/presentation/app_cubit/app_cubit.dart';
import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/views/widgets/slider_dots.dart';
import 'widgets/radio_listtile_list_widget.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});
  static const route = "/chooseLang";

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
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
    Map<String, dynamic> selectedLang =
        L10n.isAr(context) ? items.first : items.last;

    return Scaffold(
      backgroundColor: Co.backGround,
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
                  style: TStyle.semiBold_16,
                );
              },
            ),
            SizedBox(
              height: 32.px,
            ),
            Expanded(
              child: RadioListtileListWidget(
                items: items,
                getName: (value) => value['name'],
                initialValue: selectedLang,
                onSelect: (dynamic value) {
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
                      if (context.mounted) context.push(ChooseCountry.route);
                    });
              },
            ),
            SizedBox(
              height: 36.px,
            ),
            const SliderDots(
              page: 0,
            ),
          ],
        ),
      ),
    );
  }
}
