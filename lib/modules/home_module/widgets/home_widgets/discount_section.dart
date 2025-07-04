
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';

import '../../../subscription_module/data/models/package_model.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// title
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: L10n.tr().youCanGet,
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.fontColor,
                ),
              ),
              TextSpan(
                text: L10n.tr().yourPerfectBody,
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        /// discount card
        GestureDetector(
          onTap: () => GoRouter.of(context).push(
            SubscriptionPlansScreen.routeWzExtra,
            extra: PlanType.both,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // background and stacked circles
              Positioned.fill(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: AppColors.cardColor,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned.directional(
                        top: -45,
                        start: -22,
                        textDirection: Directionality.of(context),
                        child: _buildTheStackedCircles(context),
                      ),
                    ],
                  ),
                ),
              ),

              // background image
              Positioned.directional(
                top: -12,
                start: 18,
                textDirection: Directionality.of(context),
                child: Image.asset(
                  Assets.imageMan,
                  height: 117,
                ),
              ),

              // content (discount and subscribe button)
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  bottom: 18,
                  top: 22,
                ),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // discount title
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '%50 ',
                              style: CustomTextStyle.semiBold_16.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.primary,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                            ),
                            TextSpan(
                              text: '${L10n.tr().discountOnYourFirstPlan}\n',
                              style: CustomTextStyle.semiBold_16.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.fontColor,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                            ),
                            TextSpan(
                              text: L10n.tr().customizedForYou,
                              style: CustomTextStyle.semiBold_16.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.primary,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 4),

                      // subscribe text button
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: L10n.tr().dontBeLate,
                              style: CustomTextStyle.regular_14.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.fontColor,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                            ),
                            TextSpan(
                              text: L10n.tr().subscribeNow,
                              style: CustomTextStyle.semiBold_14.copyWith(
                                decoration: TextDecoration.underline,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack _buildTheStackedCircles(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        const CircleAvatar(
          radius: 100,
          backgroundColor: Color(0xff484848),
        ),
        const CircleAvatar(
          radius: 80,
          backgroundColor: Color(0xff575757),
        ),
        CircleAvatar(
          radius: 60,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
