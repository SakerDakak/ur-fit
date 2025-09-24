import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';

import '../../../core/presentation/assets/assets_manager.dart';

class ChangeEmailScreen extends StatefulWidget {
  const ChangeEmailScreen({super.key});
  static const route = '/changeEmailScreen';

  @override
  State<ChangeEmailScreen> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  final emailController = TextEditingController();
  bool isLoading = false;
  var user = Session().currentUser;

  @override
  void initState() {
    super.initState();
    // تعيين الإيميل الحالي في حقل النص
    emailController.text = user?.email ?? '';
    // إضافة listener للتغييرات في حقل النص
    emailController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {}); // إعادة بناء الواجهة لتحديث حالة الزر
  }

  @override
  void dispose() {
    emailController.removeListener(_onTextChanged);
    emailController.dispose();
    super.dispose();
  }

  // دالة لتحديث إيميل المستخدم
  Future<void> _updateEmail() async {
    final newEmail = emailController.text.trim();

    // التحقق من صحة الإيميل
    if (newEmail.isEmpty) {
      Alerts.showToast(L10n.tr().emailIsRequired, error: true);
      return;
    }

    // التحقق من صحة تنسيق الإيميل
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(newEmail)) {
      Alerts.showToast(L10n.tr().emailFormatIsInvalid, error: true);
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final response = await di<PersonalInfoRepoImpl>().updatePersonalInfo(
        personalInfoModel:
            UserInfoRequest.fromUserModel(user!.copyWith(email: newEmail)),
      );

      response.fold(
        (error) {
          Alerts.showToast(error.message, error: true);
        },
        (success) {
          Alerts.showToast(L10n.tr().infoUpdatedSuccessfully, error: false);
          Session().setCurrentUser = success;
          setState(() {
            user = success;
          });
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
    final newEmail = emailController.text.trim().toLowerCase();
    final currentEmail = user?.email.toLowerCase() ?? '';
    return newEmail.isNotEmpty &&
        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(newEmail) &&
        newEmail != currentEmail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().changeEmail),
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
            L10n.tr().changeEmailDescription,
            textAlign: TextAlign.center,
            style: TStyle.regular_14.copyWith(
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 32),

          // حقل إدخال الإيميل
          CompactTextFormField(
            controller: emailController,
            title: L10n.tr().email,
            hintText: L10n.tr().email,
            padding: EdgeInsets.zero,
            borderColor: Co.strockColor,
            titleStyle: TStyle.regular_14,
          ),

          const SizedBox(height: 32),

          // زر التحديث
          CustomElevatedButton(
            text: L10n.tr().update,
            onPressed: _canUpdate() && !isLoading ? _updateEmail : null,
            padding: EdgeInsets.zero,
            isLoading: isLoading,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
