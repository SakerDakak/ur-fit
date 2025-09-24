import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/custom_curve_slider.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';

class EditWeightBottomSheet extends StatefulWidget {
  const EditWeightBottomSheet({
    super.key,
  });

  @override
  State<EditWeightBottomSheet> createState() => _EditWeightBottomSheetState();
}

class _EditWeightBottomSheetState extends State<EditWeightBottomSheet> {
  late double currentWeight;
  late TextEditingController weightController;
  late FocusNode weightFocusNode;
  final GlobalKey<State<CustomCurveSlider>> sliderKey =
      GlobalKey<State<CustomCurveSlider>>();
  bool isLoading = false;
  bool hasChanges = false;

  @override
  void initState() {
    super.initState();
    currentWeight = Session().currentUser?.currentWeight?.toDouble() ?? 0;
    weightController =
        TextEditingController(text: currentWeight.toStringAsFixed(1));
    weightFocusNode = FocusNode();
  }

  @override
  void dispose() {
    weightController.dispose();
    weightFocusNode.dispose();
    super.dispose();
  }

  void _updateWeightFromController() {
    final text = weightController.text;
    if (text.isNotEmpty) {
      final newWeight = double.tryParse(text);
      if (newWeight != null && newWeight >= 30 && newWeight <= 150) {
        setState(() {
          currentWeight = newWeight;
          hasChanges = newWeight !=
              (Session().currentUser?.currentWeight?.toDouble() ?? 0);
        });
        // تحديث موضع السكرول عند تغيير قيمة حقل الإدخال
        _updateSliderPosition(newWeight);
      }
    }
  }

  void _updateWeightFromSlider(double value) {
    setState(() {
      currentWeight = value;
      weightController.text = value.toStringAsFixed(1);
      hasChanges =
          value != (Session().currentUser?.currentWeight?.toDouble() ?? 0);
    });
  }

  // دالة لتحديث موضع السكرول عند تغيير قيمة حقل الإدخال
  void _updateSliderPosition(double value) {
    // نحتاج إلى إعادة بناء السكرول بالقيمة الجديدة
    setState(() {});
  }

  // دالة لإزالة التركيز من حقل الإدخال
  void _unfocusTextField() {
    weightFocusNode.unfocus();
  }

  Future<void> _updateWeight() async {
    if (!hasChanges) {
      Navigator.pop(context);
      return;
    }

    // التحقق من صحة القيمة الحالية قبل الحفظ
    final text = weightController.text;
    if (text.isNotEmpty) {
      final newWeight = double.tryParse(text);
      if (newWeight == null || newWeight < 30 || newWeight > 150) {
        // عرض رسالة خطأ على شكل toast
        Alerts.showToast(L10n.tr().pleaseEnterValidWeightRange, error: true);
        return;
      }
    } else {
      // عرض رسالة خطأ إذا كان الحقل فارغ
      Alerts.showToast(L10n.tr().pleaseEnterValidWeightRange, error: true);
      return;
    }

    setState(() {
      isLoading = true;
    });

    final response = await di<PersonalInfoRepoImpl>().updatePersonalInfo(
      personalInfoModel: UserInfoRequest.fromUserModel(
        Session().currentUser!.copyWith(currentWeight: currentWeight.toInt()),
      ),
    );

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
        Navigator.pop(context, currentWeight.toInt());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _unfocusTextField, // إزالة التركيز عند النقر خارج حقل الإدخال
      child: Container(
        decoration: const BoxDecoration(
          color: Co.backGround,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // drag handle
            Container(
              margin: const EdgeInsets.only(top: 12),
              height: 4,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                color: Co.strockColor,
              ),
            ),
            const SizedBox(height: 22),

            // title section
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: AppConst.kHorizontalPadding),
              child: Column(
                children: [
                  // title icon
                  SvgPicture.asset(
                    Assets.iconsWeightIcon,
                    height: 32,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // title
                  Text(
                    L10n.tr().updateWeight,
                    style: TStyle.bold_16.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // current weight input section
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Co.cardColor,
                      borderRadius:
                          BorderRadius.circular(AppConst.kBorderRadius),
                      border: Border.all(color: Co.strockColor),
                    ),
                    child: Row(
                      children: [
                        Text(
                          L10n.tr().currentWeightIs,
                          style: TStyle.regular_16.copyWith(
                            color: Co.fontColor,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Co.backGround,
                              borderRadius:
                                  BorderRadius.circular(AppConst.kBorderRadius),
                              border: Border.all(color: Co.strockColor),
                            ),
                            child: TextField(
                              controller: weightController,
                              focusNode: weightFocusNode, // إضافة FocusNode
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d*\.?\d*')),
                              ],
                              style: TStyle.semiBold_16.copyWith(
                                color: Co.fontColor,
                              ),
                              textAlign: TextAlign.center,
                              onChanged: (value) =>
                                  _updateWeightFromController(),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixText: L10n.tr().kg,
                                suffixStyle: TStyle.regular_14.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // custom slider
                  CustomCurveSlider(
                    key: sliderKey, // إضافة key للوصول إلى الحالة
                    minValue: 30,
                    maxValue: 150,
                    initialValue: currentWeight, // استخدام القيمة الحالية
                    minIconSvgPath: Assets.iconsSkinnyBody,
                    maxIconSvgPath: Assets.iconsFatBody,
                    onValueChanged: _updateWeightFromSlider,
                  ),
                  const SizedBox(height: 24),
                  // update button
                  SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                      text: L10n.tr().updateWeight,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      isLoading: isLoading,
                      onPressed: _updateWeight,
                    ),
                  ),

                  const SizedBox(height: 22),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
