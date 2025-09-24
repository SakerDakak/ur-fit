import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/modules/profile_module/data/setting_remote_data_source.dart';
import 'package:urfit/di.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});
  static const route = '/contactUsScreen';

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  bool isLoading = false; // حالة التحميل

  @override
  void initState() {
    super.initState();
    // إضافة بيانات المستخدم الحالي إذا كان مسجل دخول
    final currentUser = Session().currentUser;
    if (currentUser != null) {
      if (currentUser.name.isNotEmpty) {
        nameController.text = currentUser.name;
      }
      if (currentUser.email.isNotEmpty) {
        emailController.text = currentUser.email;
      }
    }

    // إضافة مستمعين للحقول لتفعيل الزر عند تغيير النص
    nameController.addListener(_onTextChanged);
    emailController.addListener(_onTextChanged);
    phoneController.addListener(_onTextChanged);
    messageController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    nameController.removeListener(_onTextChanged);
    emailController.removeListener(_onTextChanged);
    phoneController.removeListener(_onTextChanged);
    messageController.removeListener(_onTextChanged);
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.dispose();
  }

  // دالة تحديث الواجهة عند تغيير النص
  void _onTextChanged() {
    setState(() {});
  }

  // دالة للتحقق من صحة البيانات
  bool _isFormValid() {
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();

    // التحقق من وجود البيانات الأساسية
    final hasBasicData = nameController.text.trim().isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty &&
        messageController.text.trim().isNotEmpty;

    // التحقق من أن الهاتف يحتوي على 9 أرقام على الأقل
    final hasValidPhoneLength = _isValidPhone(phone);

    return hasBasicData && hasValidPhoneLength;
  }

  // دالة للتحقق من صحة تنسيق الإيميل
  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  // دالة للتحقق من صحة تنسيق الهاتف (9 أرقام على الأقل)
  bool _isValidPhone(String phone) {
    // إزالة جميع المسافات والرموز الخاصة
    final cleanPhone = phone.replaceAll(RegExp(r'[^\d]'), '');
    return cleanPhone.length >= 9;
  }

  // دالة لإرسال الرسالة
  Future<void> _sendMessage() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    // التحقق من صحة تنسيق البيانات
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();

    if (!_isValidEmail(email)) {
      Alerts.showToast(L10n.tr().invalidEmail, error: true);
      return;
    }

    if (!_isValidPhone(phone)) {
      Alerts.showToast(L10n.tr().invalidPhoneNumber, error: true);
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      // إرسال البيانات إلى الباك اند
      final response = await di<SettingRemoteDataSource>().contactUs(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        message: messageController.text.trim(),
      );

      if (mounted) {
        // استخدام الرسالة من الباك اند أو الرسالة الافتراضية
        final successMessage =
            response.data?['data'] ?? L10n.tr().messageSentSuccessfully;

        // الخروج من الصفحة أولاً
        Navigator.of(context).pop();

        // ثم عرض الرسالة بعد الخروج
        Future.delayed(const Duration(milliseconds: 300), () {
          Alerts.showToast(successMessage, error: false);
        });
      }
    } catch (e) {
      if (mounted) {
        Alerts.showToast(L10n.tr().errorSendingMessage, error: true);
      }
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().contactUs),
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
            L10n.tr().weAreHappyToGetYourFeedback,
            textAlign: TextAlign.center,
            style: TStyle.regular_14.copyWith(
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 32),

          Form(
            key: formKey,
            child: Column(
              children: [
                CompactTextFormField(
                  title: L10n.tr().fullName,
                  hintText: L10n.tr().enterFullName,
                  padding: EdgeInsets.zero,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return L10n.tr().thisFieldIsRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                CompactTextFormField(
                  title: L10n.tr().email,
                  hintText: L10n.tr().enterEmail,
                  padding: EdgeInsets.zero,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return L10n.tr().thisFieldIsRequired;
                    }
                    if (!_isValidEmail(value.trim())) {
                      return L10n.tr().invalidEmail;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                CompactTextFormField(
                  title: L10n.tr().phoneNumber,
                  hintText: L10n.tr().enterPhoneNumber,
                  padding: EdgeInsets.zero,
                  controller: phoneController,
                ),
                const SizedBox(height: 12),
                CompactTextFormField(
                  title: L10n.tr().message,
                  hintText: L10n.tr().pleaseEnterYourMessage,
                  padding: EdgeInsets.zero,
                  controller: messageController,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15.0,
                  ),
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return L10n.tr().thisFieldIsRequired;
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          CustomElevatedButton(
            text: L10n.tr().send,
            onPressed: _isFormValid() && !isLoading ? _sendMessage : null,
            padding: EdgeInsets.zero,
            isLoading: isLoading,
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
