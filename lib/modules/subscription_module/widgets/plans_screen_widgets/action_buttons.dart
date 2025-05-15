import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../auth_module/bloc/authentication_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SubscriptionCubit, SubscriptionState>(
  builder: (context, state) {
    return CustomElevatedButton(
          text:sl<AuthenticationBloc>().currentUser?.hasValidSubscription ==
              false ||
              sl<AuthenticationBloc>().currentUser?.packageId != state.selectedPackage ? LocaleKeys.paymentGetWay.tr() : LocaleKeys.youAreAlreadySubscribedToThisPlan.tr(),
          onPressed:sl<AuthenticationBloc>().currentUser?.hasValidSubscription ==
              false ||
              sl<AuthenticationBloc>().currentUser?.packageId != state.selectedPackage ? () async {
           await  context.read<SubscriptionCubit>().getPaymentUrl();
           sl<AuthenticationBloc>().add(GetUserDataFromServer());

           final url = context.read<SubscriptionCubit>().state.paymentUrl;
            context.pushNamed(Routes.paymentWebView,queryParameters: {"url" :url });

          } : null,
          padding: EdgeInsets.zero,
        );
  },
),
        const SizedBox(height: 15),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.authenticationScreen);
            context
                .read<AuthenticationBloc>()
                .add(LoggedIn(token: 'token'));
          },
          child: Text(
            LocaleKeys.later.tr(),
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        )
      ],
    );
  }
}
