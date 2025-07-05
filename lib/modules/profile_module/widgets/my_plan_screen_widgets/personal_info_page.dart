import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/custom_curve_slider.dart';
import 'package:urfit/modules/personal_info/controller/cubit/setup_personal_info_cubit.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    final user = Session().currentUser;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
      children: [
        // gender
        Text(
          L10n.tr().areYou,
          style: TStyle.semiBold_16,
        ),
        const SizedBox(height: 16),
        _GenderToggleButtons(
          onChanged: (gender) => cubit.updateUserGender(gender),
        ),

        const SizedBox(height: 20),

        // age
        _SliderTitle(
          title: L10n.tr().age,
          value: user?.age, // this value will come from the server
          valueFractionDigits: 0,
        ),
        const SizedBox(height: 12),
        CustomCurveSlider(
          minValue: 10,
          maxValue: 80,
          initialValue: user?.age?.toDouble() ?? 75, // this value will come from the server
          minIconSvgPath: Assets.iconsSkinnyBody,
          maxIconSvgPath: Assets.iconsOldMan,
          roundValueToInt: true,
          onDragEnd: (v) => cubit.updateUserAge(v),
        ),

        const SizedBox(height: 30),

        // height
        _SliderTitle(
          title: L10n.tr().height,
          value: user?.height, // this value will come from the server
          suffix: Text(L10n.tr().cm, style: TStyle.semiBold_16),
        ),
        const SizedBox(height: 12),
        CustomCurveSlider(
          minValue: 100,
          maxValue: 250,
          initialValue: user?.height?.toDouble() ?? 175, // this value will come from the server
          minIconSvgPath: Assets.iconsSkinnyBody,
          maxIconSvgPath: Assets.iconsSkinnyBody,
          maxIconSize: const Size(24, 28),
          minIconSize: const Size(18, 18),
          onDragEnd: (v) => cubit.updateUserHeight(v),
        ),

        const SizedBox(height: 30),

        // weight
        _SliderTitle(
          title: L10n.tr().currentWeight,
          value: user?.currentWeight, // this value will come from the server
          suffix: Text(L10n.tr().kg, style: TStyle.semiBold_16),
        ),
        const SizedBox(height: 12),
        CustomCurveSlider(
          minValue: 30,
          maxValue: 200,
          initialValue: user?.currentWeight?.toDouble() ?? 66, // this value will come from the server
          minIconSvgPath: Assets.iconsSkinnyBody,
          maxIconSvgPath: Assets.iconsFatBody,
          onDragEnd: (v) => cubit.updateUserWeight(v),
        ),

        const SizedBox(height: 40),

        // continue button
        CustomElevatedButton(
          text: L10n.tr().continuee,
          padding: EdgeInsets.zero,
          onPressed: () => cubit.goToNextPage(),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}

class _SliderTitle extends StatelessWidget {
  const _SliderTitle({
    this.suffix,
    required this.title,
    required this.value,
    this.valueFractionDigits = 1,
  });

  final Widget? suffix;
  final String title;
  final num? value;
  final int valueFractionDigits;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        children: [
          Text(
            title,
            style: TStyle.semiBold_16,
          ),
          const SizedBox(width: 4),
          Container(
            height: 36,
            width: 100,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              color: Co.cardColor,
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: value != null
                  ? AnimatedFlipCounter(
                      duration: const Duration(milliseconds: 500),
                      value: value!,
                      fractionDigits: valueFractionDigits,
                      textStyle: TStyle.semiBold_16,
                    )
                  : Text(
                      "-",
                      style: TStyle.semiBold_16,
                    ),
            ),
          ),
          const SizedBox(width: 4),
          if (suffix != null) suffix!,
        ],
      ),
    );
  }
}

class _GenderToggleButtons extends StatefulWidget {
  final void Function(GenderEnum gender) onChanged;

  const _GenderToggleButtons({
    required this.onChanged,
  });

  @override
  State<_GenderToggleButtons> createState() => _GenderToggleButtonsState();
}

class _GenderToggleButtonsState extends State<_GenderToggleButtons> {
  int? _selectedIndex;
  @override
  void initState() {
    final user = Session().currentUser;
    super.initState();
    _selectedIndex = user?.gender?.index;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        GenderEnum.values.length,
        (i) => Expanded(
          child: GestureDetector(
            onTap: () {
              if (_selectedIndex != i) {
                setState(() {
                  _selectedIndex = i;
                });
                widget.onChanged(GenderEnum.values[i]);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 80,
              padding: const EdgeInsets.all(12),
              margin: EdgeInsetsDirectional.only(end: i == 0 ? 16 : 0),
              decoration: BoxDecoration(
                color: i == _selectedIndex ? Theme.of(context).colorScheme.primary : Co.cardColor,
                borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      GenderEnum.values[i] == GenderEnum.male ? Assets.iconsSkinnyBody : Assets.iconsFemale,
                      height: 24,
                      colorFilter: const ColorFilter.mode(
                        Co.whiteColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      GenderEnum.values[i] == GenderEnum.male ? L10n.tr().male : L10n.tr().female,
                      style: TStyle.bold_16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
