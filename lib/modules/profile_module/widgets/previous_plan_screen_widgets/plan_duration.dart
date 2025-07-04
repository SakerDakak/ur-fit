
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';


class PlanDuration extends StatelessWidget {
  final PlanHistoryModel planHistoryModel;
  const PlanDuration({
    super.key, required this.planHistoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // calender icon
            SvgPicture.asset(
              Assets.iconsCalender,
              width: 22,
              colorFilter:  ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),

            const SizedBox(width: 4),

            // duration
            Expanded(
              child: Text(
                planHistoryModel.package?.name ?? "",
                style: CustomTextStyle.bold_16,
              ),
            ),

            // price
            Text(
              "${num.parse(planHistoryModel.package!.price) / planHistoryModel.package!.duration} ${L10n.tr().sar}",
              style: CustomTextStyle.bold_16,
            ),
            Text(
              '/${L10n.tr().month}',
              style: CustomTextStyle.light_16,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
             Icon(
              Icons.arrow_forward,
              color: Theme.of(context).colorScheme.primary,
              size: 18,
            ),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '${L10n.tr().startedAt} ${planHistoryModel.subscription_data!.start_date}',
                  style: CustomTextStyle.semiBold_14,
                ),
              ),
            ),
            const Spacer(),
             Icon(
              Icons.arrow_back,
              color:Theme.of(context).colorScheme.primary,
              size: 18,
            ),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '${L10n.tr().endedAt} ${planHistoryModel.subscription_data!.end_date}',
                  style: CustomTextStyle.semiBold_14,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
