
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/debouncer.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/action_buttons.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/subscription_plans.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/subscription_screen_appbar.dart';
import 'package:urfit/modules/subscription_module/widgets/shimmer/plan_description_shimmer.dart';
import 'package:urfit/modules/subscription_module/widgets/shimmer/plans_shimmer.dart';

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
  @override
  void initState() {
    super.initState();
    context.read<SubscriptionCubit>().getPackages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // background image
          Image.asset(
            Assets.imageManPullUp,
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height * 0.8,
          ),

          // gradient shadow on top of the image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.35),
                ],
              ),
            ),
          ),

          // screen content
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              children: [
                const SizedBox(height: 20),
                // app bar
                const SubscriptionScreenAppBar(),

                const SizedBox(height: 50),

                // available plans
                BlocBuilder<SubscriptionCubit, SubscriptionState>(
                  builder: (context, state) {
                    return state.getPackagesState == RequestState.loading ||
                            state.getPackagesState == RequestState.failure
                        ? const PlansShimmer()
                        : SubscriptionPlans(
                      planType: widget.planType,
                            packages: state.packages,
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
                        : HtmlWidget(
                        state.packages.firstWhere((pack) => pack.id == state.selectedPackage || pack.id == state.packages.first.id).description ?? "");
                  },
                ),

                const SizedBox(height: 30),

                CompactTextFormField(
                  hintText: L10n.tr().couponCode,
                  onChanged: (String? value) {
                    if (value != null && value.isNotEmpty)
                      Debouncer(milliseconds: 500).run(() {
                        context
                            .read<SubscriptionCubit>()
                            .checkCouponCode(coupon: value);
                      });
                  },
                ),
                // start payment and cancel button
                const SizedBox(height: 30),
                BlocBuilder<SubscriptionCubit, SubscriptionState>(
                  builder: (context, state) {
                    if (state.couponState == RequestState.loading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state.couponState == RequestState.failure) {
                      return  Center(child: Text(state.errMessage,style: CustomTextStyle.semiBold_16.copyWith(color: AppColors.redColor),));
                    }
                    return state.couponState == RequestState.success
                        ? Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  L10n.tr().priceAfterDiscount,
                                  style: CustomTextStyle.semiBold_16,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${state.packages.firstWhere((package) => package.id == state.selectedPackage).price} ${L10n.tr().sar}",
                                  style: CustomTextStyle.bold_16.copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text(
                                    L10n.tr().priceBeforeDiscount,
                                    style: CustomTextStyle.semiBold_16,
                                  ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${L10n.tr().sar}${state.discountValue?.final_price.toStringAsFixed(2) ?? state.packages.firstWhere((package) => package.id == state.selectedPackage).price}",
                                  style: CustomTextStyle.bold_16.copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                          ],
                        )
                        : const SizedBox();
                  },
                ),
                const SizedBox(height: 10),

                const ActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
