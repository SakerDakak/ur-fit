import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';
import 'package:urfit/modules/profile_module/screens/change_email_screen.dart';
import 'package:urfit/modules/profile_module/screens/change_password_screen.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/change_name_sheet.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/delete_account_dialog.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static const route = '/settingsScreen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var user = Session().currentUser;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().editAccountSettings),
      ),
      body: ListView(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
        children: [
          const SizedBox(height: 22),
          // Settings menu items with improved design
          Container(
            decoration: BoxDecoration(
              color: Co.cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  offset: const Offset(0, 2),
                  blurRadius: 8,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                // change name
                _buildSettingsMenuItem(
                  context,
                  title: L10n.tr().changeName,
                  icon: Assets.iconsProfile,
                  onTap: () => _editName(context),
                ),

                _buildDivider(),

                // change email
                _buildSettingsMenuItem(
                  context,
                  title: L10n.tr().changeEmail,
                  icon: Assets.iconsEmail,
                  onTap: () =>
                      GoRouter.of(context).push(ChangeEmailScreen.route),
                ),

                _buildDivider(),

                // change password
                _buildSettingsMenuItem(
                  context,
                  title: L10n.tr().resetPassword,
                  icon: Assets.iconsPassword,
                  onTap: () =>
                      GoRouter.of(context).push(ChangePasswordScreen.route),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Delete account with red color
          Container(
            decoration: BoxDecoration(
              color: Co.cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.red.shade600, width: 0.5),
            ),
            child: _buildSettingsMenuItem(
              context,
              title: L10n.tr().deleteAccount,
              icon: Assets.iconsDelete,
              onTap: () => _deleteAccount(context),
              isRed: true,
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Future<void> _editName(BuildContext context) async {
    final name = await showModalBottomSheet<String>(
      backgroundColor: Co.whiteColor,
      useSafeArea: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) => const ChangeNameSheet(),
    );
    if (name != null) {
      setState(() {
        isLoading = true;
      });

      final response = await di<PersonalInfoRepoImpl>().updatePersonalInfo(
          personalInfoModel:
              UserInfoRequest.fromUserModel(user!.copyWith(name: name)));

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
          setState(() {
            user = ifRight;
          });
        },
      );
    }
  }

  void _deleteAccount(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const DeleteAccountDialog(),
    );
  }

  Widget _buildSettingsMenuItem(
    BuildContext context, {
    required String title,
    required String icon,
    required VoidCallback onTap,
    bool isRed = false,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isRed
                      ? Colors.red.shade500
                      : Theme.of(context)
                          .colorScheme
                          .primary
                          .withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  icon,
                  width: 16,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    isRed
                        ? Colors.white
                        : Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TStyle.regular_14.copyWith(
                    color: isRed ? Colors.red.shade500 : null,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: isRed ? Colors.red.shade600 : Colors.grey.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 1,
      color: Colors.grey.shade800,
    );
  }
}
