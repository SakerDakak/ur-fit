import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/modules/onboarding/views/choose_language.dart';

import '../../../core/presentation/views/widgets/title_with_icon.dart';

class OnBoardingSecScreen extends StatefulWidget {
  const OnBoardingSecScreen({super.key});
  static const route = "/onBoarding2";

  @override
  State<OnBoardingSecScreen> createState() => _OnBoardingSecScreenState();
}

class _OnBoardingSecScreenState extends State<OnBoardingSecScreen> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  late final Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 4), (Timer t) {
      if (currentIndex < 2) {
        currentIndex++;
        pageController.animateToPage(currentIndex, duration: const Duration(milliseconds: 450), curve: Curves.linear);
      } else {
        t.cancel();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: currentIndex != 1 ? Theme.of(context).colorScheme.primary : Co.backGround,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedSwitcher(
              duration: Durations.extralong1,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              layoutBuilder: (currentChild, previousChildren) => SizedBox.expand(
                child: currentChild,
              ),
              child: switch (currentIndex) {
                0 => Stack(
                    key: const ValueKey(0),
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    fit: StackFit.loose,
                    children: [
                      CircleAvatar(
                        radius: 220,
                        backgroundColor: Co.strockColor.withValues(alpha: 0.2),
                        child: CircleAvatar(
                          radius: 150,
                          backgroundColor: Co.strockColor.withValues(alpha: 0.4),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            AssetsManager.onboarding2_1,
                            width: 433,
                            height: 410,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                1 => Stack(
                    key: const ValueKey(1),
                    alignment: Alignment.bottomLeft,
                    clipBehavior: Clip.none,
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        bottom: 0,
                        left: -45,
                        right: 45,
                        child: CircleAvatar(
                          radius: 220,
                          backgroundColor: Co.strockColor.withValues(alpha: 0.2),
                          child: CircleAvatar(
                            radius: 150,
                            backgroundColor: Co.strockColor.withValues(alpha: 0.4),
                          ),
                        ),
                      ),
                      Transform.flip(
                          flipX: true,
                          child: Image.asset(
                            AssetsManager.onboarding2_2,
                            width: 266,
                            height: 403,
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight,
                          )),
                    ],
                  ),
                2 => Stack(
                    key: const ValueKey(2),
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    fit: StackFit.loose,
                    children: [
                      CircleAvatar(
                        radius: 220,
                        backgroundColor: Co.strockColor.withValues(alpha: 0.2),
                        child: CircleAvatar(
                          radius: 150,
                          backgroundColor: Co.strockColor.withValues(alpha: 0.4),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            AssetsManager.onboarding2_3,
                            width: 433,
                            height: 410,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                // TODO: Handle this case.
                int() => throw UnimplementedError(),
              },
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const IconWithTitle(),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: L10n.tr().yourHealth,
                          style: TStyle.bold_40.copyWith(color: Co.secondaryColor, fontSize: 34),
                          children: [
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: L10n.tr().isMoreImportantThanAnything,
                              style: TStyle.bold_40.copyWith(color: Co.whiteColor, fontSize: 34),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: L10n.tr().welconeToMyDailyCompanionToAHealthyLife,
                          style: TStyle.bold_20.copyWith(color: Co.whiteColor, fontSize: 24),
                          children: [
                            TextSpan(
                              text: '!',
                              style: TStyle.bold_20.copyWith(color: Co.secondaryColor, fontSize: 24),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        L10n.tr().onboardingParagraphOne,
                        style: TStyle.bold_14.copyWith(color: Co.whiteColor, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50.px,
                        width: 249.px,
                        decoration: BoxDecoration(
                          color: Co.secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            L10n.tr().startYourHealthJourneyToday,
                            style: TStyle.semiBold_16.copyWith(color: Co.whiteColor, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const IconWithTitle(),
                      const SizedBox(height: 20),
                      RichText(
                          text: TextSpan(
                        text: L10n.tr().move,
                        style: TStyle.bold_40.copyWith(color: Co.primaryColor, fontSize: 34),
                        children: [
                          const TextSpan(text: ' '),
                          TextSpan(
                            text: L10n.tr().yourBodyToFreeYourPower,
                            style: TStyle.bold_40.copyWith(color: Co.whiteColor, fontSize: 34),
                          ),
                        ],
                      )),
                      const SizedBox(height: 20),
                      RichText(
                          text: TextSpan(
                        text: L10n.tr().youDontNeedClub,
                        style: TStyle.bold_20.copyWith(color: Co.whiteColor, fontSize: 24),
                        children: [
                          const TextSpan(text: ' '),
                          TextSpan(
                            text: L10n.tr().youNeedToStart,
                            style: TStyle.bold_20.copyWith(color: Co.secondaryColor, fontSize: 24),
                          ),
                        ],
                      )),
                      const SizedBox(height: 20),
                      Text(
                        L10n.tr().onboardingParagraphTwo,
                        style: TStyle.bold_14.copyWith(color: Co.whiteColor, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50.px,
                        width: 249.px,
                        decoration: BoxDecoration(
                          color: Co.secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            L10n.tr().everyMpementsGetYouCloserToYourGoal,
                            style: TStyle.semiBold_16.copyWith(color: Co.whiteColor, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const IconWithTitle(),
                      const SizedBox(height: 20),
                      RichText(
                          text: TextSpan(
                        text: L10n.tr().eat,
                        style: TStyle.bold_40.copyWith(color: Co.secondaryColor, fontSize: 34),
                        children: [
                          TextSpan(text: ' '),
                          TextSpan(
                            text: L10n.tr().rightLiveRight,
                            style: TStyle.bold_40.copyWith(color: Co.whiteColor, fontSize: 34),
                          ),
                        ],
                      )),
                      const SizedBox(height: 20),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: L10n.tr().sayGoodByeToConfusionAndreceiveHealthyDeliciousMeals,
                            style: TStyle.bold_20.copyWith(color: Co.whiteColor, fontSize: 24),
                            children: [
                              TextSpan(
                                text: '!',
                                style: TStyle.bold_20.copyWith(color: Co.secondaryColor, fontSize: 24),
                              ),
                            ],
                          )),
                      const SizedBox(height: 20),
                      Text(
                        L10n.tr().onboardingParagraphThree,
                        style: TStyle.bold_14.copyWith(color: Co.whiteColor, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50.px,
                        width: 249.px,
                        decoration: BoxDecoration(
                          color: Co.secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            L10n.tr().startYourHealthJourneyToday,
                            style: TStyle.semiBold_16.copyWith(color: Co.whiteColor, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: IconButton(
                      onPressed: () {
                        // if (currentIndex == 2) {
                        context.pushReplacement(ChooseLanguage.route);
                        // } else {
                        //   // currentIndex += 1;
                        //   pageController.animateToPage(currentIndex++,
                        //       duration: const Duration(milliseconds: 300), curve: Curves.linear);
                        // }
                      },
                      icon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.arrow_back),
                          SizedBox(
                            width: 10.px,
                          ),
                          Text(L10n.tr().skip),
                        ],
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
