import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

class SubscriptionPlans extends StatefulWidget {
  final List<PackageModel> packages;
  final PlanType planType;
  const SubscriptionPlans(
      {super.key, required this.packages, required this.planType});

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  int selectedIndex = 0;
  List<PackageModel> packages = [];

  @override
  void initState() {
    super.initState();
    // استخدام الباقات بنفس الترتيب الذي تأتي به من البيانات
    packages = [...widget.packages];
    if (packages.isNotEmpty) {
      selectedIndex = packages.first.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SubscriptionCubit>();
    if (cubit.state.selectedPackage == null) {
      cubit.updateSelectedPackage(selectedIndex);
    }

    // عرض جميع الباقات بدون فلترة حسب النوع
    final filteredPackages = packages;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: AppConst.kHorizontalPadding,
        ),
        itemCount: filteredPackages.length,
        itemBuilder: (context, index) {
          final package = filteredPackages[index];
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 8),
            child: PlanCard(
              package: package,
              isSelected: selectedIndex == package.id,
              onTap: () {
                context
                    .read<SubscriptionCubit>()
                    .updateSelectedPackage(package.id);
                setState(() => selectedIndex = package.id);
              },
            ),
          );
        },
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.package,
  });
  final PackageModel? package;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 140, // زيادة العرض قليلاً لاستيعاب النص بشكل أفضل
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
          color:
              isSelected ? Theme.of(context).colorScheme.primary : Co.cardColor,
          border: isSelected ? null : Border.all(color: Co.strockColor),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // صورة الباقة في الخلفية
              if (package?.image != null && package!.image!.isNotEmpty)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 100,
                  child: Image.network(
                    package!.image!,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        height: 100,
                        color: isSelected
                            ? Theme.of(context).colorScheme.primary
                            : Co.cardColor,
                        child: const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 100,
                        color: isSelected
                            ? Theme.of(context).colorScheme.primary
                            : Co.cardColor,
                      );
                    },
                  ),
                ),

              // طبقة التدرج لتدمج الصورة بالكرت
              if (package?.image != null && package!.image!.isNotEmpty)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          (isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Co.cardColor)
                              .withValues(alpha: 0.2),
                          (isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Co.cardColor)
                              .withValues(alpha: 0.5),
                          (isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Co.cardColor)
                              .withValues(alpha: 0.8),
                          isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Co.cardColor,
                        ],
                      ),
                    ),
                  ),
                ),

              // المحتوى الرئيسي للكرت
              Container(
                padding: const EdgeInsets.all(12).copyWith(
                  top: 24,
                  bottom: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // اسم الباقة
                    SizedBox(
                      height: 40,
                      child: AutoSizeText(
                        package?.name ?? L10n.tr().month,
                        style: TStyle.bold_16.copyWith(
                          color: isSelected ? Co.selectedFont : null,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // أفضل عرض
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppConst.kBorderRadius),
                        color: Co.yellow,
                      ),
                      child: AutoSizeText(
                        L10n.tr().bestOffer,
                        style: TStyle.medium_12.copyWith(
                          color: Co.selectedFont,
                        ),
                        maxLines: 1,
                      ),
                    ),

                    // السعر بالشهر - ترتيب صحيح: السعر ثم العملة ثم المدة
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            '${package == null ? "59.99" : (num.parse(package!.price.toString())).toStringAsFixed(2)} ${L10n.tr().sar}',
                            style: TStyle.bold_16.copyWith(
                              color: isSelected ? Co.selectedFont : null,
                            ),
                            maxLines: 1,
                          ),
                          AutoSizeText(
                            '/${L10n.tr().month}',
                            style: TStyle.regular_14.copyWith(
                              color: isSelected ? Co.selectedFont : null,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),

                    // السعر بالأسبوع - ترتيب صحيح: السعر ثم العملة ثم المدة
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            '${package == null ? "4.99" : (num.parse(package!.price.toString()) / (package!.duration * 4)).toStringAsFixed(2)} ${L10n.tr().sar}',
                            style: TStyle.regular_14.copyWith(
                              color: isSelected ? Co.selectedFont : null,
                            ),
                            maxLines: 1,
                          ),
                          AutoSizeText(
                            '/${L10n.tr().week}',
                            style: TStyle.regular_12.copyWith(
                              color: isSelected ? Co.selectedFont : null,
                            ),
                            maxLines: 1,
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
      ),
    );
  }
}
