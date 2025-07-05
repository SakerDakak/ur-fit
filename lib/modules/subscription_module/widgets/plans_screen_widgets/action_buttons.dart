import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/screens/payment_webview.dart';

import '../../../../core/presentation/routes/routes.dart';
import '../../../../core/presentation/utils/loading_helper.dart';
import '../../../../service_locator.dart';
import '../../../auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SubscriptionCubit, SubscriptionState>(
          builder: (context, state) {
            return CustomElevatedButton(
              text: sl<AuthenticationBloc>().currentUser?.hasValidSubscription == false ||
                      sl<AuthenticationBloc>().currentUser?.packageId != state.selectedPackage
                  ? L10n.tr().paymentGetWay
                  : L10n.tr().youAreAlreadySubscribedToThisPlan,
              onPressed: sl<AuthenticationBloc>().currentUser?.hasValidSubscription == false ||
                      sl<AuthenticationBloc>().currentUser?.packageId != state.selectedPackage
                  ? () async {
                      await context.read<SubscriptionCubit>().getPaymentUrl();
                      sl<AuthenticationBloc>().getUserDataFromServer();

                      final url = context.read<SubscriptionCubit>().state.paymentUrl;
                      if (url == null) {
                        final package = state.packages.firstWhere(
                            (package) => package.id == state.selectedPackage || package.id == state.packages.first.id);
                        sl<AuthenticationBloc>().getUserDataFromServer();

                        LoadingHelper.stopLoading();
                      } else {
                        context.pushNamed(PaymentWebView.route, queryParameters: {"url": url});
                      }
                    }
                  : null,
              padding: EdgeInsets.zero,
            );
          },
        ),
        const SizedBox(height: 15),
        TextButton(
          onPressed: () {
            context.pushNamed(AppRouter.authenticationScreen);
            // context.read<AuthenticationBloc>().loggedIn(token: 'token');
          },
          child: Text(
            L10n.tr().later,
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        )
      ],
    );
  }
}
