import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
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

class ChangeUsernameScreen extends StatefulWidget {
  const ChangeUsernameScreen({super.key});
  static const route = '/changeUsernameScreen';

  @override
  State<ChangeUsernameScreen> createState() => _ChangeUsernameScreenState();
}

class _ChangeUsernameScreenState extends State<ChangeUsernameScreen> {
  final nameController = TextEditingController();
  bool isLoading = false;
  var user = Session().currentUser;

  @override
  void initState() {
    super.initState();
    // تعيين الاسم الحالي في حقل النص
    nameController.text = user?.name ?? '';
    // إضافة listener للتغييرات في حقل النص
    nameController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {}); // إعادة بناء الواجهة لتحديث حالة الزر
  }

  @override
  void dispose() {
    nameController.removeListener(_onTextChanged);
    nameController.dispose();
    super.dispose();
  }

  // دالة لتحديث اسم المستخدم
  Future<void> _updateUsername() async {
    final newName = nameController.text.trim();

    // التحقق من صحة الاسم
    if (newName.isEmpty) {
      Alerts.showToast(L10n.tr().fullNameIsRequired, error: true);
      return;
    }

    if (newName.length < 3) {
      Alerts.showToast(L10n.tr().fullNameMustBeAtLeast3Characters, error: true);
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final response = await di<PersonalInfoRepoImpl>().updatePersonalInfo(
        personalInfoModel:
            UserInfoRequest.fromUserModel(user!.copyWith(name: newName)),
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
    final newName = nameController.text.trim();
    return newName.isNotEmpty && newName.length >= 3 && newName != user?.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().changeName),
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
            L10n.tr().changeNameDescription,
            textAlign: TextAlign.center,
            style: TStyle.regular_14.copyWith(
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 32),

          // حقل إدخال الاسم
          CompactTextFormField(
            controller: nameController,
            title: L10n.tr().fullName,
            hintText: L10n.tr().fullName,
            padding: EdgeInsets.zero,
            borderColor: Co.strockColor,
            titleStyle: TStyle.regular_14,
          ),

          const SizedBox(height: 32),

          // زر التحديث
          CustomElevatedButton(
            text: L10n.tr().update,
            onPressed: _canUpdate() && !isLoading ? _updateUsername : null,
            padding: EdgeInsets.zero,
            isLoading: isLoading,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
