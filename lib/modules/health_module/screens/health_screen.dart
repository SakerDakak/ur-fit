import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12)
              .copyWith(bottom: 60),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            image: DecorationImage(
              image: AssetImage(AssetsManager.medical),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // الدوائر الخلفية
              Positioned(
                left: 0,
                top: -100,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  fit: StackFit.loose,
                  children: [
                    CircleAvatar(
                      radius: 220,
                      backgroundColor: Co.strockColor.withValues(alpha: 0.2),
                    ),
                    CircleAvatar(
                      radius: 150,
                      backgroundColor: Co.strockColor.withValues(alpha: 0.4),
                    ),
                  ],
                ),
              ),

              // نص "قريباً"
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: const BoxDecoration(
                    color: Co.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: Text(
                    L10n.tr().soon,
                    style: TStyle.semiBold_16.copyWith(color: Co.blackColor),
                  ),
                ),
              ),

              // المحتوى الرئيسي
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        L10n.tr().becauseWeKeenToProvideAnIntegratedService,
                        textAlign: TextAlign.center,
                        style: TStyle.bold_20.copyWith(color: Co.whiteColor),
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${L10n.tr().waitFor} ",
                            style:
                                TStyle.bold_20.copyWith(color: Co.primaryColor),
                            children: [
                              TextSpan(
                                text: L10n.tr().launching,
                                style: TStyle.bold_20
                                    .copyWith(color: Co.whiteColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      L10n.tr().ourMedicalServicesSoon,
                      style: TStyle.bold_20.copyWith(color: Co.whiteColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
