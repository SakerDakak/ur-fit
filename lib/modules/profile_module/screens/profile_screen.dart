
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/app_language_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/default_list_tile.dart';
import 'package:urfit/modules/profile_module/screens/contact_us_screen.dart';
import 'package:urfit/modules/profile_module/screens/my_plan.dart';
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
          body: ListView(
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
                color: AppColors.strockColor,
              ),

              const SizedBox(height: 12),

              // my plan tile
              DefaultListTile(
                onTap: () => GoRouter.of(context).push(MyPlanScreen.route),
                title: L10n.tr().myPlan,
                leadingIconSvgPath: Assets.iconsPaper,
              ),

              const Divider(
                color: AppColors.strockColor,
              ),

              // previous plan tile
              DefaultListTile(
                onTap: () =>
                    GoRouter.of(context).push(PreviousPlanScreen.route),
                title: L10n.tr().previousPlan,
                leadingIconSvgPath: Assets.iconsPaper2,
              ),

              const Divider(
                color: AppColors.strockColor,
              ),

              // subscription tile
              DefaultListTile(
                onTap: () => GoRouter.of(context)
                    .push(SubscriptionPlansScreen.routeWzExtra, extra: PlanType.both),
                title: L10n.tr().subscribe,
                leadingIconSvgPath: Assets.iconsCopy,
              ),

              const Divider(
                color: AppColors.strockColor,
              ),

              // settings tile
              DefaultListTile(
                onTap: () => GoRouter.of(context).push(SettingsScreen.route),
                title: L10n.tr().settings,
                leadingIconSvgPath: Assets.iconsSettings,
              ),

              const Divider(
                color: AppColors.strockColor,
              ),

              // privacy policy tile
              DefaultListTile(
                onTap: () => context.pushNamed(PrivacyPolicyScreen.routeWzKey,
                    pathParameters: {"key": "privacy_policy"}),
                title: L10n.tr().privacyPolicy,
                leadingIconSvgPath: Assets.iconsShieldCheck,
              ),

              const Divider(
                color: AppColors.strockColor,
              ),
              // terms_and_conditions tile
              DefaultListTile(
                onTap: () => context.pushNamed(PrivacyPolicyScreen.routeWzKey,
                    pathParameters: {"key": "terms_and_conditions"}),
                title: L10n.tr().termsAndConditions,
                leadingIconSvgPath: Assets.iconsShieldCheck,
              ),

              const Divider(
                color: AppColors.strockColor,
              ),
              // about_us
              DefaultListTile(
                onTap: () => context.pushNamed(PrivacyPolicyScreen.routeWzKey,
                    pathParameters: {"key": "about_us"}),
                title: L10n.tr().aboutUs,
                leadingIconSvgPath: Assets.iconsShieldCheck,
              ),

              const Divider(
                color: AppColors.strockColor,
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
                color: AppColors.strockColor,
              ),

              // support tile
              DefaultListTile(
                onTap: () => GoRouter.of(context).push(ContactUsScreen.route),
                title: L10n.tr().contactUs,
                leadingIconSvgPath: Assets.iconsSupport,
              ),

              // const Divider(
              //   color: AppColors.strockColor,
              // ),

              // medical department tile
              // DefaultListTile(
              //   onTap: () {
              //     showDialog(
              //         context: context,
              //         builder: (_) => new AlertDialog(
              //               backgroundColor: Colors.blue,
              //               insetPadding: EdgeInsets.zero,
              //               contentPadding: EdgeInsets.zero,
              //               titlePadding: EdgeInsets.zero,
              //               shape: RoundedRectangleBorder(
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(16.0))),
              //               content: Builder(
              //                 builder: (context) {
              //                   // Get available height and width of the build area of this widget. Make a choice depending on the size.
              //                   var height = MediaQuery.of(context).size.height;
              //                   var width = MediaQuery.of(context).size.width;
              //
              //                   return Container(
              //                     // color: Colors.red,
              //                     decoration: BoxDecoration(
              //                       borderRadius:
              //                           BorderRadius.all(Radius.circular(16.0)),
              //                       image: DecorationImage(
              //                         image: AssetImage(AssetsManager.medical),
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                     height: 473,
              //                     width: 343,
              //                     child: Stack(
              //                       children: [
              //                         Positioned(
              //                           left: 0,
              //                           top: -100,
              //                           child: Container(
              //                             child: Stack(
              //                               alignment: Alignment.center,
              //                               clipBehavior: Clip.none,
              //                               fit: StackFit.loose,
              //                               children: [
              //                                 CircleAvatar(
              //                                   radius: 220,
              //                                   backgroundColor: AppColors.strockColor.withValues(alpha: 0.2),
              //                                 ),
              //                                 CircleAvatar(
              //                                   radius: 150,
              //                                   backgroundColor: AppColors.strockColor.withValues(alpha: 0.4),
              //                                 ),
              //                               ],
              //                             ),
              //                           ),
              //                         ),
              //
              //                         Positioned(
              //                             top: 20,
              //                             left: 20,
              //                             child: Container(
              //                                 padding:
              //                                     const EdgeInsets.symmetric(
              //                                   horizontal: 10,
              //                                   vertical: 4,
              //                                 ),
              //                                 decoration: BoxDecoration(
              //                                     color: AppColors.yellow,
              //                                     borderRadius:
              //                                         BorderRadius.all(
              //                                             Radius.circular(
              //                                                 16.0))),
              //                                 child: Text(
              //                                   L10n.tr().soon,
              //                                   style: CustomTextStyle
              //                                       .semiBold_16
              //                                       .copyWith(
              //                                           color: AppColors
              //                                               .blackColor),
              //                                 ))),
              //                         Align(
              //                             alignment: Alignment.center,
              //                             child: Container(
              //                                 child: Column(mainAxisSize: MainAxisSize.min,
              //                               children: [
              //                                 const SizedBox(
              //                                   height: 20,
              //                                 ),
              //                                 Center(
              //                                   child: Text(
              //                                     L10n.tr().becauseWeKeenToProvideAnIntegratedService,
              //                                     textAlign: TextAlign.center,
              //                                     style: CustomTextStyle.bold_20
              //                                         .copyWith(
              //                                             color: AppColors
              //                                                 .whiteColor),
              //                                   ),
              //                                 ),
              //                                 const SizedBox(
              //                                   height: 20,
              //                                 ),
              //                                 RichText(
              //                                   text: TextSpan(
              //                                     children: [
              //                                       TextSpan(
              //                                         text: "${L10n.tr().waitFo} " ,
              //                                         style: CustomTextStyle
              //                                             .bold_20
              //                                             .copyWith(
              //                                                 color: AppColors
              //                                                     .primaryColor),
              //                                         children: [
              //                                           TextSpan(
              //                                             text: L10n.tr().launching,
              //                                             style: CustomTextStyle
              //                                                 .bold_20
              //                                                 .copyWith(
              //                                                     color: AppColors
              //                                                         .whiteColor),
              //                                           ),
              //                                         ]
              //                                       ),
              //                                     ],
              //                                   ),
              //                                 ),
              //                                 const SizedBox(
              //                                   height: 20,
              //                                 ),
              //                                 Text(
              //                                   L10n.tr().ourMedicalServicesSoon,
              //                                   style: CustomTextStyle.bold_20
              //                                       .copyWith(
              //                                           color: AppColors
              //                                               .whiteColor),
              //                                 ),
              //                               ],
              //                             ))),
              //                         const Align(
              //                           alignment: Alignment.topRight,
              //                           child: CloseButton(),
              //                         )
              //
              //                         ],
              //                     ),
              //                   );
              //                 },
              //               ),
              //             ));
              //     // showDialog(
              //     //   context: context, builder: (BuildContext context) {
              //     //   return AlertDialog(
              //     //
              //     //
              //     //     child: Container(
              //     //       color: Colors.red,
              //     //       height: 343,
              //     //       width: 473,
              //     //       // decoration: BoxDecoration(
              //     //       //   image:  DecorationImage(
              //     //       //     image: AssetImage(AssetsManager.medical),
              //     //       //     fit: BoxFit.cover,
              //     //       //   ),
              //     //       // ),
              //     //       padding: const EdgeInsets.all(20),
              //     //
              //     //       child: Column(
              //     //         mainAxisSize: MainAxisSize.min,
              //     //         children: [
              //     //           Align(
              //     //             alignment: Alignment.topLeft,
              //     //               child: Text(L10n.tr().soon,style: CustomTextStyle.semiBold_16.copyWith(color: AppColors.primaryColor),)),
              //     //           const SizedBox(height: 10,),
              //     //           // Text(L10n.tr().comingSoon,style: CustomTextStyle.medium_14.copyWith(color: AppColors.primaryColor),),
              //     //         ],
              //     //       ),
              //     //                     ),
              //     //   );
              //     // },);
              //   },
              //   title: L10n.tr().medicalSection,
              //   leadingIconSvgPath: AppAssets.iconsMedical,
              //   trailing: Container(
              //     padding: const EdgeInsets.symmetric(
              //       horizontal: 10,
              //       vertical: 4,
              //     ),
              //     decoration: BoxDecoration(
              //       color: AppColors.yellow,
              //       borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              //     ),
              //     child: Text(
              //       L10n.tr().soon,
              //       style: CustomTextStyle.semiBold_10.copyWith(
              //         color: AppColors.selectedFont,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}
