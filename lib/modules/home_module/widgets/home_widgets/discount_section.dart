import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:urfit/core/domain/error/session.dart';
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
    final user = Session().currentUser;
    final hasValidSubscription = user?.hasValidSubscription ?? false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// title - النص الأصلي
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "${L10n.tr().youCanGet} ",
                style: TStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Co.fontColor,
                ),
              ),
              TextSpan(
                text: L10n.tr().yourPerfectBody,
                style: TStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        /// motivational card - يختلف حسب حالة الاشتراك
        GestureDetector(
          onTap: () {
            if (hasValidSubscription) {
              // إذا كان لديه اشتراك، انتقل إلى شاشة التمارين
              // يمكن تعديل هذا ليفتح شاشة التمارين المحددة
              GoRouter.of(context).go('/mainPage?tab=1'); // تبويب التمارين
            } else {
              // إذا لم يكن لديه اشتراك، انتقل إلى شاشة الاشتراك
              GoRouter.of(context).push(
                SubscriptionPlansScreen.routeWzExtra,
                extra: PlanType.both,
              );
            }
          },
          child: SizedBox(
            height: 100, // ارتفاع ثابت
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // background and stacked circles
                Positioned.fill(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Co.cardColor,
                      borderRadius:
                          BorderRadius.circular(AppConst.kBorderRadius),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
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

                // background image - في الطرف الأيسر
                Positioned.directional(
                  bottom: 0,
                  start: -8,
                  textDirection: Directionality.of(context),
                  child: Image.asset(
                    Assets.imageMan,
                    height: 118,
                  ),
                ),

                // content - في الطرف الأيمن لتجنب التضارب مع الصورة
                Positioned.directional(
                  top: 0,
                  end: 0,
                  bottom: 0,
                  textDirection: Directionality.of(context),
                  child: Container(
                    width: MediaQuery.of(context).size.width *
                        0.55, // زيادة العرض قليلاً
                    padding: const EdgeInsetsDirectional.only(
                      start: 22,
                      end: 2,
                      bottom: 12, // تقليل الحشو السفلي
                      top: 16, // تقليل الحشو العلوي
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // motivational content - يختلف حسب حالة الاشتراك
                        AutoSizeText.rich(
                          TextSpan(
                            children: [
                              if (hasValidSubscription) ...[
                                // محتوى تحفيزي للتمرين للمشتركين
                                TextSpan(
                                  text: L10n.tr().motivationalExerciseSubtitle,
                                  style: TStyle.semiBold_16.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Co.fontColor,
                                    shadows: [
                                      BoxShadow(
                                        color:
                                            Colors.black.withValues(alpha: 0.2),
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ] else ...[
                                // محتوى تحفيزي للاشتراك لغير المشتركين
                                TextSpan(
                                  text: L10n.tr()
                                      .motivationalSubscriptionSubtitle,
                                  style: TStyle.semiBold_16.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Co.fontColor,
                                    shadows: [
                                      BoxShadow(
                                        color:
                                            Colors.black.withValues(alpha: 0.2),
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),
                          maxLines: 3, // عدد الأسطر الأقصى
                          minFontSize: 10, // الحد الأدنى لحجم الخط
                          maxFontSize: 16, // الحد الأقصى لحجم الخط
                          overflow: TextOverflow.ellipsis, // قطع النص بـ ...
                        ),

                        // motivational action button
                        if (!hasValidSubscription)
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: AutoSizeText.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: L10n.tr()
                                        .motivationalSubscriptionAction,
                                    style: TStyle.semiBold_14.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black
                                              .withValues(alpha: 0.2),
                                          offset: const Offset(0, 4),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              maxLines: 1, // تقليل عدد الأسطر لتجنب التجاوز
                              minFontSize: 10, // الحد الأدنى لحجم الخط
                              maxFontSize: 14, // الحد الأقصى لحجم الخط
                              overflow:
                                  TextOverflow.ellipsis, // قطع النص بـ ...
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Stack _buildTheStackedCircles(BuildContext context) {
    return Stack(
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
