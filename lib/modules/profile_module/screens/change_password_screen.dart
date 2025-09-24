import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';

import '../../../core/presentation/assets/assets_manager.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});
  static const route = '/changePasswordScreen';

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // إضافة listeners للتغييرات في حقول النص
    oldPasswordController.addListener(_onTextChanged);
    newPasswordController.addListener(_onTextChanged);
    confirmPasswordController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {}); // إعادة بناء الواجهة لتحديث حالة الزر
  }

  @override
  void dispose() {
    oldPasswordController.removeListener(_onTextChanged);
    newPasswordController.removeListener(_onTextChanged);
    confirmPasswordController.removeListener(_onTextChanged);
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  // دالة لتحديث كلمة المرور
  Future<void> _updatePassword() async {
    final oldPassword = oldPasswordController.text.trim();
    final newPassword = newPasswordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    // التحقق من صحة البيانات
    if (oldPassword.isEmpty) {
      Alerts.showToast(L10n.tr().currentPasswordIsRequired, error: true);
      return;
    }

    if (newPassword.isEmpty) {
      Alerts.showToast(L10n.tr().newPasswordIsRequired, error: true);
      return;
    }

    if (newPassword.length < 6) {
      Alerts.showToast(L10n.tr().passwordMustBeAtLeast6Characters, error: true);
      return;
    }

    if (confirmPassword.isEmpty) {
      Alerts.showToast(L10n.tr().confirmPasswordIsRequired, error: true);
      return;
    }

    if (newPassword != confirmPassword) {
      Alerts.showToast(L10n.tr().passwordsDoNotMatch, error: true);
      return;
    }

    if (oldPassword == newPassword) {
      Alerts.showToast(L10n.tr().newPasswordMustBeDifferent, error: true);
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final response = await di<PersonalInfoRepoImpl>().changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      );

      response.fold(
        (error) {
          Alerts.showToast(error.message, error: true);
        },
        (success) {
          Alerts.showToast(L10n.tr().passwordUpdatedSuccessfully, error: false);
          // العودة للصفحة السابقة
          if (context.mounted) {
            context.pop();
          }
        },
      );
    } catch (e) {
      Alerts.showToast(L10n.tr().somethingWentWrong, error: true);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  // دالة للتحقق من إمكانية التحديث
  bool _canUpdate() {
    final oldPassword = oldPasswordController.text.trim();
    final newPassword = newPasswordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    return oldPassword.isNotEmpty &&
        newPassword.isNotEmpty &&
        confirmPassword.isNotEmpty &&
        newPassword.length >= 6 &&
        newPassword == confirmPassword &&
        oldPassword != newPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().resetPassword),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: ListView(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
        children: [
          const SizedBox(height: 20),

          // أيقونة التطبيق
          Center(
            child: Image.asset(
              AssetsManager.logo,
              width: 150,
            ),
          ),

          const SizedBox(height: 16),

          // نص توضيحي
          Text(
            L10n.tr().changePasswordDescription,
            textAlign: TextAlign.center,
            style: TStyle.regular_14.copyWith(
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 32),

          // حقل كلمة المرور الحالية
          CompactPasswordTextFormField(
            controller: oldPasswordController,
            title: L10n.tr().currentPassword,
            hintText: '',
            padding: EdgeInsets.zero,
            borderColor: Co.strockColor,
            titleStyle: TStyle.regular_14,
          ),

          const SizedBox(height: 16),

          // حقل كلمة المرور الجديدة
          CompactPasswordTextFormField(
            controller: newPasswordController,
            title: L10n.tr().newPassword,
            hintText: '',
            padding: EdgeInsets.zero,
            borderColor: Co.strockColor,
            titleStyle: TStyle.regular_14,
          ),

          const SizedBox(height: 16),

          // حقل تأكيد كلمة المرور الجديدة
          CompactPasswordTextFormField(
            controller: confirmPasswordController,
            title: L10n.tr().confirmPassword,
            hintText: '',
            padding: EdgeInsets.zero,
            borderColor: Co.strockColor,
            titleStyle: TStyle.regular_14,
          ),

          const SizedBox(height: 32),

          // زر التحديث
          CustomElevatedButton(
            text: L10n.tr().update,
            onPressed: _canUpdate() && !isLoading ? _updatePassword : null,
            padding: EdgeInsets.zero,
            isLoading: isLoading,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
