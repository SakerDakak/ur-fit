
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/modules/auth/persentation/bloc/login_bloc.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../bloc/authentication_bloc/authentication_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 32.px,
          ),
          CompactTextFormField(
            hintText: L10n.tr().enterEmail,
            autoFillHints: [AutofillHints.email],
            title: L10n.tr().email,
            onChanged: (String? value) {
              context.read<LoginBloc>().add(OnChangeEmailEvent(value!));
            },
            validator: (String? value) {
              // print("validation : ${value}");
              if (value!.isEmpty) {
                return L10n.tr().emailIsRequired;
              }else if (!value.contains('@') && !value.contains('.')) {
                return L10n.tr().emailMustBeValid;
              }else{
                return null;
              }
            },
          ),
          SizedBox(
            height: 24.px,
          ),
          CompactPasswordTextFormField(
            validator: (String? value) {
              if (value!.isEmpty) {
                return L10n.tr().passwordIsRequired;
              } else if(value.length < 6){
                return L10n.tr().passwordMustBeAtLeast6Characters;
              }
              return null;
            },
            hintText: L10n.tr().enterPassword,
            autoFillHints: [AutofillHints.password],
            title: L10n.tr().password,
            onChanged: (String? value) {
              context.read<LoginBloc>().add(OnChangePasswordEvent(value!));
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.px),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                BlocSelector<LoginBloc, LoginState, bool>(
                  selector: (state) => state.remember,
                  builder: (context, remember) {
                    return Checkbox(
                      value: remember,
                      onChanged: (val) {
                        context
                            .read<LoginBloc>()
                            .add(ToggleRemember(val!));
                      },
                      checkColor: AppColors.whiteColor,
                      focusColor: Theme.of(context).colorScheme.primary,
                      activeColor: Theme.of(context).colorScheme.primary,
                      side:  BorderSide(color: Theme.of(context).colorScheme.primary),
                    );
                  },
                ),
                Text(
                  L10n.tr().rememberMe,
                  style: CustomTextStyle.regular_16,
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(ForgetPasswordFlowEvent());

                    },
                    child: Text(
                      L10n.tr().forgetPassword,
                      style: CustomTextStyle.regular_16
                          .copyWith(color: Theme.of(context).colorScheme.primary),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 24.px,
          ),
          CustomElevatedButton(
              text: L10n.tr().signIn,
              onPressed: () {
                context.read<LoginBloc>().add(Login(context));
                // context
                //     .read<AuthenticationBloc>()
                //     .add(LoggedIn(token: 'token'));
              }),
          SizedBox(
            height: 24.px,
          ),
          Text(
            L10n.tr().or,
            style: CustomTextStyle.regular_16,
          ),
          SizedBox(
            height: 24.px,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    context.read<LoginBloc>().add(GoogleLoginEvent());
                  },
                  icon: SvgPicture.asset(
                    AssetsManager.google,
                    width: 33.px,
                    height: 33.px,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AssetsManager.facebook,
                    width: 33.px,
                    height: 33.px,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AssetsManager.apple,
                    width: 33.px,
                    height: 33.px,
                  )),
            ],
          ),
          SizedBox(
            height: 24.px,
          ),
          // RichText(
          //   text: TextSpan(
          //       text: 'يمكنك الدخول  ',
          //       children: [
          //         WidgetSpan(
          //
          //             child: InkWell(
          //               onTap: (){
          //                 context.read<LoginBloc>().add(GuestLoginEvent());
          //
          //               },
          //               child: Text(
          //                 'كزائر',
          //                 style: CustomTextStyle.semiBold_16
          //                     .copyWith(color: Theme.of(context).colorScheme.primary),
          //               ),
          //             ),
          //             alignment: PlaceholderAlignment.middle)
          //       ],
          //       style: CustomTextStyle.regular_16),
          // )
        ],
      ),
    );
  }
}
