import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/profile_module/screens/change_email_screen.dart';
import 'package:urfit/modules/profile_module/screens/change_password_screen.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/account_info.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/change_name_sheet.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/delete_account_dialog.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/logout_dialog.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/settings_tile.dart';

import '../../auth_module/bloc/authentication_bloc/authentication_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const route = '/settingsScreen';

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;
    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.settings.tr()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          const SizedBox(height: 20),

          // account info
          const AccountInfo(),

          const SizedBox(height: 30),

          // change name
          SettingsTile(
            onTap: () => _editName(context),
            title: user?.name ?? 'تغير الاسم',
            svgIconPath: Assets.iconsProfile,
          ),

          const SizedBox(height: 16),

          // change email
          SettingsTile(
            onTap: () => GoRouter.of(context).push(ChangeEmailScreen.route),
            title: user?.email ?? 'تغير البريد الالكترونى',
            svgIconPath: Assets.iconsEmail,
          ),

          const SizedBox(height: 16),

          // change password
          SettingsTile(
            onTap: () => GoRouter.of(context).push(ChangePasswordScreen.route),
            title: LocaleKeys.resetPassword.tr(),
            svgIconPath: Assets.iconsPassword,
          ),

          const SizedBox(height: 16),

          // logout
          SettingsTile(
            onTap: () => _logout(context),
            title: LocaleKeys.logout.tr(),
            svgIconPath: Assets.iconsLogout,
          ),

          const SizedBox(height: 16),

          // delete account
          SettingsTile(
            onTap: () => _deleteAccount(context),
            title: LocaleKeys.deleteAccount.tr(),
            svgIconPath: Assets.iconsDelete,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _editName(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
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
  }

  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const LogoutDialog(),
    );
  }

  void _deleteAccount(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const DeleteAccountDialog(),
    );
  }
}
