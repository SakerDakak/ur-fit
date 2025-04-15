import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/const.dart';
import 'package:urfit/core/routes/routes.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

class SubscriptionPlans extends StatefulWidget {
  final List<PackageModel> packages;
  const SubscriptionPlans({super.key, required this.packages});

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    if(widget.packages.isNotEmpty) {
      selectedIndex = widget.packages.first.id;
    }
  }


  @override
  Widget build(BuildContext context) {
    final cubit =context.read<SubscriptionCubit>();
    if(cubit.state.selectedPackage == null){
    cubit.updateSelectedPackage(selectedIndex);
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          widget.packages.length,
          (i) => Padding(
            // add padding if index is less than the items (length -1)
            padding: EdgeInsetsDirectional.only(end: 8),
            child: PlanCard(
              package: widget.packages[i],
              isSelected: selectedIndex == widget.packages[i].id,
              onTap: () {
                context.read<SubscriptionCubit>().updateSelectedPackage(widget.packages[i].id);
                setState(() {
                  selectedIndex = widget.packages[i].id;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard({
    required this.isSelected,
    required this.onTap, required this.package,
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
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: isSelected ? AppColors.primaryColor : AppColors.cardColor,
          border: isSelected ? null : Border.all(color: AppColors.strockColor),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              // subscription period
              Text(
                package?.name ?? 'month',
                style: CustomTextStyle.bold_16.copyWith(
                  color: isSelected ? AppColors.selectedFont : null,
                ),
              ),

              const SizedBox(height: 6),

              // best offer container
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: AppColors.yellow,
                ),
                child: Text(
                  'افضل العروض',
                  style: CustomTextStyle.medium_12.copyWith(
                    color: AppColors.selectedFont,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                '\$${package?.price}',
                style: CustomTextStyle.regular_14.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: isSelected ? AppColors.selectedFont : null,
                  decorationColor:
                      isSelected ? AppColors.selectedFont : AppColors.fontColor,
                ),
              ),

              const SizedBox(height: 10),

              // price per month
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '\$${package == null ? "59.99" :(num.parse(package!.price) / package!.duration).toStringAsFixed(2)}',
                      style: CustomTextStyle.bold_16.copyWith(
                        color: isSelected ? AppColors.selectedFont : null,
                      ),
                    ),
                    TextSpan(
                      text: '/',
                      style: CustomTextStyle.semiBold_16.copyWith(
                        color: isSelected ? AppColors.selectedFont : null,
                      ),
                    ),
                    TextSpan(
                      text: 'شهر',
                      style: CustomTextStyle.regular_14.copyWith(
                        color: isSelected ? AppColors.selectedFont : null,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // price per weak
              Text(
                '\$${package == null ? "4.99" :(num.parse(package!.price) / (package!.duration * 4)).toStringAsFixed(2)}/الاسبوع',
                style: CustomTextStyle.regular_14.copyWith(
                  color: isSelected ? AppColors.selectedFont : null,
                ),
              ),

              const SizedBox(height: 10),

              // discount percent
              Text(
                '+خصم 10%',
                style: CustomTextStyle.regular_14.copyWith(
                  color: isSelected ? AppColors.selectedFont : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
