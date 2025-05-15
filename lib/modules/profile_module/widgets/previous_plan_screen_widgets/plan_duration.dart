import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';

import '../../../../generated/locale_keys.g.dart';

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
              AppAssets.iconsCalender,
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
              "${num.parse(planHistoryModel.package!.price) / planHistoryModel.package!.duration} ${LocaleKeys.sar.tr()}",
              style: CustomTextStyle.bold_16,
            ),
            Text(
              '/${LocaleKeys.month.tr()}',
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
                  '${LocaleKeys.startedAt.tr()} ${planHistoryModel.subscription_data!.start_date}',
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
                  '${LocaleKeys.endedAt.tr()} ${planHistoryModel.subscription_data!.end_date}',
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
