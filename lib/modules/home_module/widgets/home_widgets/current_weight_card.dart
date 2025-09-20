import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/edit_weight_bottom_sheet.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';

class CurrentWeightCard extends StatefulWidget {
  const CurrentWeightCard({super.key});

  @override
  State<CurrentWeightCard> createState() => _CurrentWeightCardState();
}

class _CurrentWeightCardState extends State<CurrentWeightCard> {
  var user = Session().currentUser;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Co.cardColor,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: Co.strockColor),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),

          // current and target weight
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                WeightInfoItem(
                  title: L10n.tr().currentWeight,
                  svgIconPath: Assets.iconsWeightIcon,
                  weight: user?.currentWeight?.toDouble() ?? 0,
                ),
                const SizedBox(
                  height: 45,
                  child: VerticalDivider(
                    color: Co.strockColor,
                    width: 40,
                  ),
                ),
                WeightInfoItem(
                  title: L10n.tr().goal,
                  svgIconPath: Assets.iconsFlag,
                  weight: user?.targetWeight?.toDouble() ?? 0,
                ),
              ],
            ),
          ),

          // update weight button
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () => _editWeight(context),
              child: Text(
                L10n.tr().updateWeight,
                style: TStyle.regular_14.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _editWeight(BuildContext context) async {
    final weight = await showModalBottomSheet<int>(
      backgroundColor: Co.whiteColor,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) => const EditWeightBottomSheet(),
    );
    if (weight != null) {
      setState(() {
        isLoading = true;
      });

      final response = await di<PersonalInfoRepoImpl>().updatePersonalInfo(
          personalInfoModel: UserInfoRequest.fromUserModel(
              Session().currentUser!.copyWith(currentWeight: weight)));

      setState(() {
        isLoading = false;
      });

      response.fold(
        (ifLeft) {
          Alerts.showToast(ifLeft.message, error: true);
        },
        (ifRight) {
          Alerts.showToast(L10n.tr().infoUpdatedSuccessfully, error: false);
          Session().setCurrentUser = ifRight;
          setState(() => user = ifRight);
        },
      );
    }
  }
}

class WeightInfoItem extends StatelessWidget {
  const WeightInfoItem({
    super.key,
    required this.title,
    required this.svgIconPath,
    required this.weight,
  });

  final String title;
  final String svgIconPath;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgIconPath,
          height: 16,
          width: 16,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  weight.toStringAsFixed(0),
                  style: TStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  L10n.tr().kg,
                  style: TStyle.regular_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
