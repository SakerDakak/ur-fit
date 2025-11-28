import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:urfit/core/data/services/health_local_service.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';

enum HealthValueType { water, sleep, steps }

class EditHealthValueDialog extends StatefulWidget {
  final HealthValueType type;
  final double currentValue;
  final double originalValue;

  const EditHealthValueDialog({
    super.key,
    required this.type,
    required this.currentValue,
    required this.originalValue,
  });

  @override
  State<EditHealthValueDialog> createState() => _EditHealthValueDialogState();
}

class _EditHealthValueDialogState extends State<EditHealthValueDialog> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // للمياه: القيمة باللتر، للنوم: القيمة بالساعات، للخطوات: القيمة بعدد الخطوات
    double displayValue;
    if (widget.type == HealthValueType.water) {
      displayValue = widget.currentValue;
    } else if (widget.type == HealthValueType.sleep) {
      displayValue = widget.currentValue / 60; // تحويل الدقائق إلى ساعات
    } else {
      // steps
      displayValue = widget.currentValue;
    }
    
    _controller = TextEditingController(
      text: widget.type == HealthValueType.steps 
          ? displayValue.toInt().toString()
          : displayValue.toStringAsFixed(1),
    );
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final text = _controller.text.trim();
    if (text.isEmpty) {
      Alerts.showToast(
        widget.type == HealthValueType.water
            ? 'يرجى إدخال قيمة صحيحة'
            : 'يرجى إدخال قيمة صحيحة',
        error: true,
      );
      return;
    }

    final newValue = double.tryParse(text);
    if (newValue == null || newValue < 0) {
      Alerts.showToast('يرجى إدخال قيمة صحيحة', error: true);
      return;
    }

    setState(() {
      isLoading = true;
    });

    // حفظ القيمة
    final now = DateTime.now();
    if (widget.type == HealthValueType.water) {
      await _saveWater(now, newValue);
    } else if (widget.type == HealthValueType.sleep) {
      await _saveSleep(now, newValue);
    } else {
      // steps
      await _saveSteps(now, newValue.toInt());
    }

    setState(() {
      isLoading = false;
    });

    if (mounted) {
      Navigator.pop(context, true);
    }
  }

  Future<void> _saveWater(DateTime date, double newValue) async {
    print("=== حفظ تعديل المياه ===");
    print("التاريخ: $date");
    print("القيمة الأصلية: ${widget.originalValue}");
    print("القيمة الجديدة: $newValue");
    await HealthLocalService.saveWaterAdjustment(
      date,
      widget.originalValue,
      newValue,
    );
    print("تم الحفظ بنجاح");
  }

  Future<void> _saveSleep(DateTime date, double newValueInHours) async {
    print("=== حفظ تعديل النوم ===");
    print("التاريخ: $date");
    print("القيمة الأصلية (بالدقائق): ${widget.originalValue}");
    print("القيمة الجديدة (بالساعات): $newValueInHours");
    await HealthLocalService.saveSleepAdjustment(
      date,
      widget.originalValue, // القيمة الأصلية بالدقائق
      newValueInHours,
    );
    print("تم الحفظ بنجاح");
  }

  Future<void> _saveSteps(DateTime date, int newValue) async {
    print("=== حفظ تعديل الخطوات ===");
    print("التاريخ: $date");
    print("القيمة الأصلية: ${widget.originalValue.toInt()}");
    print("القيمة الجديدة: $newValue");
    await HealthLocalService.saveStepsAdjustment(
      date,
      widget.originalValue.toInt(),
      newValue,
    );
    print("تم الحفظ بنجاح");
  }

  @override
  Widget build(BuildContext context) {
    String title;
    String unit;
    
    if (widget.type == HealthValueType.water) {
      title = L10n.tr().water;
      unit = L10n.tr().litre;
    } else if (widget.type == HealthValueType.sleep) {
      title = L10n.tr().sleep;
      unit = L10n.tr().hours;
    } else {
      // steps
      title = L10n.tr().steps;
      unit = L10n.tr().step;
    }

    return Dialog(
      backgroundColor: Co.backGround,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'تعديل $title',
              style: TStyle.bold_16.copyWith(
                color: Co.fontColor,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Co.cardColor,
                borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                border: Border.all(color: Co.strockColor),
              ),
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  widget.type == HealthValueType.steps
                      ? FilteringTextInputFormatter.digitsOnly
                      : FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                style: TStyle.semiBold_16.copyWith(
                  color: Co.fontColor,
                ),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixText: unit,
                  suffixStyle: TStyle.regular_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  hintText: '0.0',
                  hintStyle: TStyle.regular_14.copyWith(
                    color: Co.fontColor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Co.cardColor,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'إلغاء',
                      style: TStyle.semiBold_16.copyWith(
                        color: Co.fontColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomElevatedButton(
                    text: 'حفظ',
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    isLoading: isLoading,
                    onPressed: _save,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
