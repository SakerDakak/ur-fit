import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

class SubscriptionPlans extends StatefulWidget {
  final List<PackageModel> packages;
  final PlanType planType;
  const SubscriptionPlans({super.key, required this.packages, required this.planType});

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  int selectedIndex = 0;
  List<PackageModel> packages = [];

  bool seeAll = false;
  @override
  void initState() {
    super.initState();
    packages = [...widget.packages];
    packages.sort((a, b) {
      if (a.type == widget.planType && b.type != widget.planType) return -1;
      if (a.type != widget.planType && b.type == widget.planType) return 1;
      return 0;
    });
    if (packages.isNotEmpty) {
      selectedIndex = packages.first.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    print("packages ${seeAll}");
    final cubit = context.read<SubscriptionCubit>();
    if (cubit.state.selectedPackage == null) {
      cubit.updateSelectedPackage(selectedIndex);
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          seeAll ? packages.length : packages.where((package) => package.type == widget.planType).length + 1,
          (i) {
            if (i < (seeAll ? packages.length : packages.where((package) => package.type == widget.planType).length)) {
              return Padding(
                // add padding if index is less than the items (length -1)
                padding: EdgeInsetsDirectional.only(end: 8),
                child: PlanCard(
                  package: packages[i],
                  isSelected: selectedIndex == packages[i].id,
                  onTap: () {
                    context.read<SubscriptionCubit>().updateSelectedPackage(packages[i].id);
                    setState(() => selectedIndex = packages[i].id);
                  },
                ),
              );
            } else {
              return Padding(
                // add padding if index is equal to the items (length -1)
                padding: EdgeInsetsDirectional.only(end: 8),
                child: GestureDetector(
                  onTap: () {
                    print("see all");
                    setState(() {
                      seeAll = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 120,
                    height: 220,
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                      color: Co.cardColor,
                      border: Border.all(color: Co.strockColor),
                    ),
                    child: Center(
                      child: Text(
                        L10n.tr().seeMore,
                        style: TStyle.bold_16.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard({
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
        width: 120,
        height: 220,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
          color: isSelected ? Theme.of(context).colorScheme.primary : Co.cardColor,
          border: isSelected ? null : Border.all(color: Co.strockColor),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              // subscription period
              Text(
                package?.name ?? 'month',
                style: TStyle.bold_16.copyWith(
                  color: isSelected ? Co.selectedFont : null,
                ),
              ),

              const SizedBox(height: 6),

              // best offer container
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                  color: Co.yellow,
                ),
                child: Text(
                  'افضل العروض',
                  style: TStyle.medium_12.copyWith(
                    color: Co.selectedFont,
                  ),
                ),
              ),

              const SizedBox(height: 8),
              // if(package?.discount_code != null)
              // Text(
              //   '\$${package?.price}',
              //   style: CustomTextStyle.regular_14.copyWith(
              //     decoration: TextDecoration.lineThrough,
              //     color: isSelected ? AppColors.selectedFont : null,
              //     decorationColor:
              //         isSelected ? AppColors.selectedFont : AppColors.fontColor,
              //   ),
              // ),
              // if(package?.discount_code == null)
              //   const SizedBox(height: 18),

              const SizedBox(height: 10),

              // price per month
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          '${L10n.tr().sar}${package == null ? "59.99" : (num.parse(package!.price.toString())).toStringAsFixed(2)}',
                      style: TStyle.bold_16.copyWith(
                        color: isSelected ? Co.selectedFont : null,
                      ),
                    ),
                    TextSpan(
                      text: '/',
                      style: TStyle.semiBold_16.copyWith(
                        color: isSelected ? Co.selectedFont : null,
                      ),
                    ),
                    TextSpan(
                      text: L10n.tr().month,
                      style: TStyle.regular_14.copyWith(
                        color: isSelected ? Co.selectedFont : null,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // price per weak
              Text(
                '${L10n.tr().sar}${package == null ? "4.99" : (num.parse(package!.price.toString()) / (package!.duration * 4)).toStringAsFixed(2)}/${L10n.tr().week}',
                style: TStyle.regular_14.copyWith(
                  color: isSelected ? Co.selectedFont : null,
                ),
              ),

              const SizedBox(height: 10),

              // discount percent
              // if(package?.discount_code != null)
              //   Text(
              //   '+خصم ${package?.discount_value}%',
              //   style: CustomTextStyle.regular_14.copyWith(
              //     color: isSelected ? AppColors.selectedFont : null,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
