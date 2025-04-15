import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/action_buttons.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/plan_description.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/subscription_plans.dart';
import 'package:urfit/modules/subscription_module/widgets/plans_screen_widgets/subscription_screen_appbar.dart';
import 'package:urfit/modules/subscription_module/widgets/shimmer/plan_description_shimmer.dart';
import 'package:urfit/modules/subscription_module/widgets/shimmer/plans_shimmer.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/service_locator.dart';
import '../../auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import '../data/models/package_model.dart';

class SubscriptionPlansScreen extends StatefulWidget {
  final PlanType planType;

  const SubscriptionPlansScreen({super.key, required this.planType});

  @override
  State<SubscriptionPlansScreen> createState() =>
      _SubscriptionPlansScreenState();
}

class _SubscriptionPlansScreenState extends State<SubscriptionPlansScreen> {

  @override
  void initState() {
    super.initState();
    context.read<SubscriptionCubit>().getPackages(planType: widget.planType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // background image
          Image.asset(
            AppAssets.imageManPullUp,
            fit: BoxFit.cover,
            height: MediaQuery
                .sizeOf(context)
                .height * 0.8,
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
                        : SubscriptionPlans(packages: state.packages,);
                  },
                ),

                const SizedBox(height: 30),

                // selected plan description
                BlocBuilder<SubscriptionCubit, SubscriptionState>(
                  builder: (context, state) {
                    return state.getPackagesState == RequestState.loading ||
                        state.getPackagesState == RequestState.failure
                        ? const PlanDescriptionShimmer()
                        : PlanDescription(package: state.packages,);
                  },
                ),

                const SizedBox(height: 30),

                // start payment and cancel button

                        const ActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
