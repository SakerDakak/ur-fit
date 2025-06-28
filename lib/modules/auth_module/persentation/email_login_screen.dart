import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/persentation/widget/login_form.dart';
import 'package:urfit/modules/auth_module/persentation/widget/register_form.dart';

import '../../../../core/style/colors.dart';
import '../../../core/shared/widgets/title_with_icon.dart';
import '../../../core/style/fonts.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({super.key});
  static const route = "emailLogin";

  @override
  Widget build(BuildContext context) {
    int _initialPage = 0;
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 77.px,
                ),

                IconWithTitle(),
                SizedBox(
                  height: 32.px,
                ),
                // Text("اختر دولتك",style: CustomTextStyle.cairoSemiBold16,),
                Center(
                  child: SizedBox(
                    width: 264.px,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.px)),
                      child: TabBar(
                        indicatorPadding: EdgeInsets.symmetric(
                            horizontal: 5.px, vertical: 3.px),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 0,
                        labelColor: Theme.of(context).colorScheme.primary,
                        labelStyle: CustomTextStyle.semiBold_24
                            .copyWith(fontSize: 18.px),
                        unselectedLabelColor: AppColors.darkGrey,
                        // tabAlignment: TabAlignment.center,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                            color: AppColors.backGround,
                            borderRadius: BorderRadius.circular(8.px)),
                        indicatorColor: Colors.transparent,
                        tabs: [
                          Tab(
                            text: LocaleKeys.signUp.tr(),
                          ),
                          Tab(
                            text: LocaleKeys.signIn.tr(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      RegisterForm(),
                      LoginForm(),
                    ],
                  ),
                ),
                //
                // ChooseLocalWidget(items: items,onChanged: (String? value){
                //   selectedCountry = value!;
                // },),
                // SizedBox(height: 36.px,),

                SizedBox(
                  height: 36.px,
                ),
                // SliderDots(
                //   page: _initialPage,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
