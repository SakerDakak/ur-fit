import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/app_language_buttons.dart';
import 'package:urfit/modules/personal_info/screens/personal_info_layout_screen.dart';
import 'package:urfit/modules/profile_module/screens/contact_us_screen.dart';
import 'package:urfit/modules/profile_module/screens/previous_plan_screen.dart';
import 'package:urfit/modules/profile_module/screens/privacy_policy_screen.dart';
import 'package:urfit/modules/profile_module/screens/settings_screen.dart';
import 'package:urfit/modules/profile_module/widgets/account_info_sectiond.dart';
import 'package:urfit/modules/profile_module/widgets/settings_screen_widgets/logout_dialog.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';

import '../../subscription_module/data/models/package_model.dart';

class ProfileScreen extends StatelessWidget {
  final bool isGuest;

  const ProfileScreen({super.key, required this.isGuest});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: RefreshIndicator(
            onRefresh: () async {
              // تحديث بيانات المستخدم
              await Session().getUserDataFromServer();
            },
            child: ListView(
              padding: const EdgeInsets.only(
                bottom: 50,
                left: AppConst.kHorizontalPadding,
                right: AppConst.kHorizontalPadding,
              ),
              children: [
                // account info with improved spacing
                const AccountInfo(),

                const SizedBox(height: 24),

                // Profile menu items with improved design
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
                      // my plan tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().editPersonalInfo,
                        icon: Assets.iconsPaper,
                        onTap: () => GoRouter.of(context).push(
                            PresonalInfoLayoutScreen.routeWzExtra,
                            extra: {
                              'isEditingProfile': true,
                              'showCancelButton': true,
                            }),
                      ),

                      _buildDivider(),

                      // previous plan tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().previousPlan,
                        icon: Assets.iconsPaper2,
                        onTap: () =>
                            GoRouter.of(context).push(PreviousPlanScreen.route),
                      ),

                      _buildDivider(),

                      // subscription tile
                      _buildProfileMenuItem(
                        context,
                        title:
                            Session().currentUser?.hasValidSubscription == true
                                ? L10n.tr().mySubscription
                                : L10n.tr().subscriptions,
                        icon: Assets.iconsCopy,
                        onTap: () => GoRouter.of(context).push(
                            SubscriptionPlansScreen.routeWzExtra,
                            extra: PlanType.both),
                      ),

                      _buildDivider(),

                      // settings tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().editAccountSettings,
                        icon: Assets.iconsSettings,
                        onTap: () =>
                            GoRouter.of(context).push(SettingsScreen.route),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Secondary menu items
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
                      // notifications tile
                      _buildProfileMenuItemWithTrailing(
                        context,
                        title: L10n.tr().notification,
                        icon: Assets.iconsNotifications,
                        onTap: () {},
                        trailing: SizedBox(
                          height: 35,
                          child: FittedBox(
                            child: Switch(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),

                      _buildDivider(),

                      // language selection tile
                      _buildLanguageMenuItem(
                        context,
                        title: L10n.tr().chooseLang,
                        icon: Assets.iconsFlag,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Profile menu items with improved design
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
                      // about_us tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().aboutUs,
                        icon: Assets.iconsShieldCheck,
                        onTap: () => context.pushNamed(
                            PrivacyPolicyScreen.routeWzKey,
                            pathParameters: {"key": "about_us"}),
                      ),

                      _buildDivider(),

                      // privacy policy tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().privacyPolicy,
                        icon: Assets.iconsShieldCheck,
                        onTap: () => context.pushNamed(
                            PrivacyPolicyScreen.routeWzKey,
                            pathParameters: {"key": "privacy_policy"}),
                      ),

                      _buildDivider(),

                      // terms_and_conditions tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().termsAndConditions,
                        icon: Assets.iconsShieldCheck,
                        onTap: () => context.pushNamed(
                            PrivacyPolicyScreen.routeWzKey,
                            pathParameters: {"key": "terms_and_conditions"}),
                      ),
                      _buildDivider(),

                      // support tile
                      _buildProfileMenuItem(
                        context,
                        title: L10n.tr().contactUs,
                        icon: Assets.iconsSupport,
                        onTap: () =>
                            GoRouter.of(context).push(ContactUsScreen.route),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Logout tile with red color
                Container(
                  decoration: BoxDecoration(
                    color: Co.cardColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.red.shade600, width: 0.5),
                  ),
                  child: _buildProfileMenuItem(
                    context,
                    title: L10n.tr().logout,
                    icon: Assets.iconsLogout,
                    onTap: () => _showLogoutDialog(context),
                    isRed: true,
                  ),
                ),
                const SizedBox(height: 20),
                FutureBuilder(
                  future: () async {
                    final push = await ShorebirdUpdater().readCurrentPatch();
                    final info = await PackageInfo.fromPlatform();
                    return (info, push);
                  }(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const SizedBox.shrink();
                    } else {
                      final data = snapshot.data;
                      return Center(
                        child: Text(
                          "V ${data?.$1.version}+${data?.$1.buildNumber}",
                          style: TStyle.regular_14.copyWith(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const LogoutDialog(),
    );
  }

  Widget _buildProfileMenuItem(
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

  Widget _buildProfileMenuItemWithTrailing(
    BuildContext context, {
    required String title,
    required String icon,
    required VoidCallback onTap,
    required Widget trailing,
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
                  color: Theme.of(context)
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
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              trailing,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageMenuItem(
    BuildContext context, {
    required String title,
    required String icon,
  }) {
    return BlocSelector<AppCubit, AppState, String>(
      selector: (state) => state.currentLocal,
      builder: (context, String currentLang) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              // تبديل اللغة: إذا كانت العربية تصبح إنجليزية والعكس
              final newLang = currentLang == 'ar' ? 'en' : 'ar';
              context.read<AppCubit>().changeLang(newLang);
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
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
                        Theme.of(context).colorScheme.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      title,
                      style: TStyle.regular_14.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const AppLanguageButtons(),
                ],
              ),
            ),
          ),
        );
      },
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
