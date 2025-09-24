import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/app_language_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/default_list_tile.dart';
import 'package:urfit/modules/personal_info/screens/personal_info_layout_screen.dart';
import 'package:urfit/modules/profile_module/screens/contact_us_screen.dart';
import 'package:urfit/modules/profile_module/screens/previous_plan_screen.dart';
import 'package:urfit/modules/profile_module/screens/privacy_policy_screen.dart';
import 'package:urfit/modules/profile_module/screens/settings_screen.dart';
import 'package:urfit/modules/profile_module/widgets/account_info_sectiond.dart';
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
                // account info
                const AccountInfo(),

                const SizedBox(height: 12),

                // app language
                const AppLanguageButtons(),

                const SizedBox(height: 28),

                const Divider(
                  color: Co.strockColor,
                ),

                const SizedBox(height: 12),

                // my plan tile
                DefaultListTile(
                  onTap: () => GoRouter.of(context)
                      .push(PresonalInfoLayoutScreen.routeWzExtra, extra: {
                    'isEditingProfile': true,
                    'showCancelButton':
                        true, // إظهار زر الإلغاء عند الدخول من صفحة حسابي
                  }),
                  title: L10n.tr().myPlan,
                  leadingIconSvgPath: Assets.iconsPaper,
                ),

                const Divider(
                  color: Co.strockColor,
                ),

                // previous plan tile
                DefaultListTile(
                  onTap: () =>
                      GoRouter.of(context).push(PreviousPlanScreen.route),
                  title: L10n.tr().previousPlan,
                  leadingIconSvgPath: Assets.iconsPaper2,
                ),

                const Divider(
                  color: Co.strockColor,
                ),

                // subscription tile
                DefaultListTile(
                  onTap: () => GoRouter.of(context).push(
                      SubscriptionPlansScreen.routeWzExtra,
                      extra: PlanType.both),
                  title: L10n.tr().subscribe,
                  leadingIconSvgPath: Assets.iconsCopy,
                ),

                const Divider(
                  color: Co.strockColor,
                ),

                // settings tile
                DefaultListTile(
                  onTap: () => GoRouter.of(context).push(SettingsScreen.route),
                  title: L10n.tr().settings,
                  leadingIconSvgPath: Assets.iconsSettings,
                ),

                const Divider(
                  color: Co.strockColor,
                ),

                // privacy policy tile
                DefaultListTile(
                  onTap: () => context.pushNamed(PrivacyPolicyScreen.routeWzKey,
                      pathParameters: {"key": "privacy_policy"}),
                  title: L10n.tr().privacyPolicy,
                  leadingIconSvgPath: Assets.iconsShieldCheck,
                ),

                const Divider(
                  color: Co.strockColor,
                ),
                // terms_and_conditions tile
                DefaultListTile(
                  onTap: () => context.pushNamed(PrivacyPolicyScreen.routeWzKey,
                      pathParameters: {"key": "terms_and_conditions"}),
                  title: L10n.tr().termsAndConditions,
                  leadingIconSvgPath: Assets.iconsShieldCheck,
                ),

                const Divider(
                  color: Co.strockColor,
                ),
                // about_us
                DefaultListTile(
                  onTap: () => context.pushNamed(PrivacyPolicyScreen.routeWzKey,
                      pathParameters: {"key": "about_us"}),
                  title: L10n.tr().aboutUs,
                  leadingIconSvgPath: Assets.iconsShieldCheck,
                ),

                const Divider(
                  color: Co.strockColor,
                ),
                // notifications tile
                DefaultListTile(
                  onTap: () {},
                  title: L10n.tr().notification,
                  leadingIconSvgPath: Assets.iconsNotifications,
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

                const Divider(
                  color: Co.strockColor,
                ),

                // support tile
                DefaultListTile(
                  onTap: () => GoRouter.of(context).push(ContactUsScreen.route),
                  title: L10n.tr().contactUs,
                  leadingIconSvgPath: Assets.iconsSupport,
                ),
                const SizedBox(height: 12),
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
                              "V ${data?.$1.version}+${data?.$1.buildNumber} (${data?.$2?.number ?? 0})"));
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
