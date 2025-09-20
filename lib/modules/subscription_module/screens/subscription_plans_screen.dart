import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/adaptive_progress_indicator.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/screens/payment_webview.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/subscription_plans.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/subscription_screen_appbar.dart';
import 'package:urfit/modules/subscription_module/widgets/shimmer/plan_description_shimmer.dart';

import '../../../core/presentation/utils/enums.dart';
import '../data/models/package_model.dart';

class SubscriptionPlansScreen extends StatefulWidget {
  final PlanType planType;
  static const routeWzExtra = '/subscriptionPlansScreen';

  const SubscriptionPlansScreen({super.key, required this.planType});

  @override
  State<SubscriptionPlansScreen> createState() =>
      _SubscriptionPlansScreenState();
}

class _SubscriptionPlansScreenState extends State<SubscriptionPlansScreen> {
  Timer? _debounce;

  _checkCoupon(String? value) async {
    if (value == null || value.trim().isEmpty) {
      context.read<SubscriptionCubit>().clearCoupon();
      _debounce!.cancel();
      return;
    }
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 800), () async {
      await context.read<SubscriptionCubit>().checkCouponCode(coupon: value);
    });
  }

  @override
  void initState() {
    super.initState();
    context.read<SubscriptionCubit>().getPackages();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(" PLAN TYPEEEEEE ::: ${widget.planType.name}");
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            Assets.imageManPullUp,
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height * 0.8,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black.withValues(alpha: 0.9),
                  Colors.black.withValues(alpha: 0.5),
                  Colors.black.withValues(alpha: 0.35),
                ],
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConst.kHorizontalPadding,
              ),
              children: [
                const SizedBox(height: 20),
                const SubscriptionScreenAppBar(),
                const SizedBox(height: 50),
                BlocBuilder<SubscriptionCubit, SubscriptionState>(
                  builder: (context, state) {
                    if (state.getPackagesState == RequestState.failure) {
                      return FailureWidget(
                        message: state.errMessage,
                        onRetry: () {
                          context.read<SubscriptionCubit>().getPackages();
                        },
                      );
                    }

                    return Skeletonizer(
                      enabled: state.getPackagesState == RequestState.loading,
                      child: SubscriptionPlans(
                        planType: widget.planType,
                        packages: state.getPackagesState == RequestState.loading
                            ? Fakers().packages
                            : state.packages,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),

                // selected plan description
                BlocBuilder<SubscriptionCubit, SubscriptionState>(
                  builder: (context, state) {
                    return state.getPackagesState == RequestState.loading ||
                            state.getPackagesState == RequestState.failure
                        ? const PlanDescriptionShimmer()
                        : HtmlWidget(state.packages
                                .firstWhere((pack) =>
                                    pack.id == state.selectedPackage ||
                                    pack.id == state.packages.first.id)
                                .description ??
                            "");
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: CompactTextFormField(
                        hintText: L10n.tr().couponCode,
                        onChanged: (String? value) {
                          _checkCoupon(value);
                        },
                      ),
                    ),
                    BlocBuilder<SubscriptionCubit, SubscriptionState>(
                        builder: (context, state) =>
                            switch (state.couponState) {
                              RequestState.initial => const Icon(
                                  Icons.discount_outlined,
                                  color: Colors.white70,
                                  size: 24),
                              RequestState.loading =>
                                const AdaptiveProgressIndicator(size: 24),
                              RequestState.failure => const Icon(
                                  Icons.info_outline,
                                  color: Colors.red,
                                  size: 24),
                              RequestState.success => const Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 24),
                            }),
                  ],
                ),
                // start payment and cancel button
                const SizedBox(height: 30),
                BlocBuilder<SubscriptionCubit, SubscriptionState>(
                  builder: (context, state) {
                    switch (state.couponState) {
                      case RequestState.initial:
                      case RequestState.loading:
                        return const SizedBox.shrink();
                      case RequestState.failure:
                        return Center(
                          child: Text(
                            state.errMessage,
                            style:
                                TStyle.semiBold_16.copyWith(color: Co.redColor),
                          ),
                        );
                      case RequestState.success:
                        if (state.discountValue == null) {
                          return const SizedBox.shrink();
                        }
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(L10n.tr().priceBeforeDiscount,
                                    style: TStyle.semiBold_16),
                                const SizedBox(width: 10),
                                Text(
                                    "${state.packages.firstWhere((package) => package.id == state.selectedPackage).price} ${L10n.tr().sar}",
                                    style: TStyle.bold_16
                                        .copyWith(color: Co.primaryColor)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(L10n.tr().priceAfterDiscount,
                                    style: TStyle.semiBold_16),
                                const SizedBox(width: 10),
                                Text(
                                  "${L10n.tr().sar}${state.discountValue?.final_price.toStringAsFixed(2) ?? state.packages.firstWhere((package) => package.id == state.selectedPackage).price}",
                                  style: TStyle.bold_16
                                      .copyWith(color: Co.primaryColor),
                                ),
                              ],
                            ),
                          ],
                        );
                    }
                  },
                ),
                const SizedBox(height: 10),
                BlocConsumer<SubscriptionCubit, SubscriptionState>(
                  listenWhen: (previous, current) =>
                      current.getPaymentUrlState != previous.getPaymentUrlState,
                  listener: (context, state) {
                    if (state.getPaymentUrlState == RequestState.failure) {
                      Alerts.showToast(state.errMessage,
                          length: Toast.LENGTH_LONG);
                    }
                  },
                  builder: (context, state) {
                    if (state.getPaymentUrlState == RequestState.loading ||
                        state.getPaymentUrlState == RequestState.success) {
                      return const Center(child: AdaptiveProgressIndicator());
                    }
                    if (Session().currentUser?.hasValidSubscription == true) {
                      return CustomElevatedButton(
                        text: Session().currentUser?.packageId ==
                                state.selectedPackage
                            ? L10n.tr().youAreAlreadySubscribedToThisPlan
                            : L10n.tr().youAreSubscribedToAPlan,
                        onPressed: null,
                      );
                    }
                    return CustomElevatedButton(
                      padding: EdgeInsets.zero,
                      text: state.discountValue?.final_price != null &&
                              state.discountValue!.final_price <= 0
                          ? L10n.tr().subscribe
                          : L10n.tr().paymentGetWay,
                      onPressed: () async {
                        await context.read<SubscriptionCubit>().getPaymentUrl();
                        if (!context.mounted) return;
                        if (state.paymentUrl == null) {
                          await Session().getUserDataFromServer();
                          Alerts.showToast(
                              L10n.tr().youHaveSuccessfullySubscribedToPlan,
                              error: false);
                          if (context.mounted) {
                            context.go(MainPage.routeWithBool(false));
                          }
                        } else {
                          final res = await context.pushNamed<String>(
                              PaymentWebView.route,
                              queryParameters: {"url": state.paymentUrl});
                          if (res != null && context.mounted) {
                            context
                                .read<SubscriptionCubit>()
                                .paymentResponse(res);
                          }
                        }
                      },
                    );
                  },
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    if (Session().currentUser != null) {
                      context.go(MainPage.routeWithBool(false));
                    } else {
                      context.go(AuthScreen.route);
                    }
                  },
                  child: Text(
                    L10n.tr().later,
                    style: TStyle.bold_16.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
