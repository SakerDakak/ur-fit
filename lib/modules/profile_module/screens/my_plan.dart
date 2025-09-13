// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:urfit/core/presentation/localization/l10n.dart';
// import 'package:urfit/core/presentation/style/fonts.dart';
// import 'package:urfit/core/presentation/utils/constants.dart';
// import 'package:urfit/core/presentation/views/widgets/default_animated_switcher.dart';
// import 'package:urfit/di.dart';
// import 'package:urfit/modules/profile_module/cubit/update_user_info_cubit.dart';
// import 'package:urfit/modules/profile_module/cubit/update_user_info_state.dart';
// import 'package:urfit/modules/profile_module/widgets/my_plan_screen_widgets/custom_navigation_bar.dart';

// class MyPlanScreen extends StatelessWidget {
//   const MyPlanScreen({super.key});
//   static const route = '/myPlanScreen';

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => di<UpdateUserInfoCubit>(),
//       child: Builder(builder: (context) {
//         final cubit = context.read<UpdateUserInfoCubit>();
//         return PopScope(
//           canPop: false,
//           onPopInvokedWithResult: (didPop, result) {
//             if (didPop) {
//               return;
//             }

//             _handleBackNavigation(context, cubit);
//           },
//           child: Scaffold(
//             body: SafeArea(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 28),

//                   // app bar
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: AppConst.kHorizontalPadding,
//                     ),
//                     child: Row(
//                       children: [
//                         // back button
//                         IconButton(
//                           onPressed: () => _handleBackNavigation(context, cubit),
//                           icon: const Icon(Icons.arrow_back),
//                         ),

//                         // page title
//                         Expanded(
//                           child: Text(
//                             L10n.tr().myPlan,
//                             textAlign: TextAlign.center,
//                             style: TStyle.bold_16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 8),

//                   // current page indicator
//                   BlocBuilder<UpdateUserInfoCubit, UpdateUserInfoState>(
//                     buildWhen: (p, c) => p.currentPageIndex != c.currentPageIndex,
//                     builder: (context, state) {
//                       return DefaultAnimatedSwitcher(
//                         transitionType: DefaultAnimatedSwitcherTransition.size,
//                         child: SizedBox(
//                           key: ValueKey(
//                             cubit.state.currentPageIndex > 2,
//                           ),
//                           child: cubit.state.currentPageIndex > 2
//                               ? const SizedBox.shrink()
//                               : _buildTheFirstThreePagesTabsIndicator(cubit, context),
//                         ),
//                       );
//                     },
//                   ),

//                   // page view
//                   Expanded(
//                     child: PageView(
//                       controller: cubit.pageController,
//                       physics: const NeverScrollableScrollPhysics(),
//                       children: const [
//                         // PersonalInfoPage(),
//                         // GoalsPage(),
//                         // YourChoicesPage(),
//                         // EquipmentsPage(),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }

//   Column _buildTheFirstThreePagesTabsIndicator(UpdateUserInfoCubit cubit, BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         // guide text
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: AppConst.kHorizontalPadding,
//           ),
//           child: Text(
//             L10n.tr().myPlanPhrase,
//             textAlign: TextAlign.center,
//             style: TStyle.semiBold_12.copyWith(
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//         ),

//         const SizedBox(height: 16),

//         // navigation bar
//         CustomNavigationBar(
//           onTap: (index) => cubit.goToPage(index),
//           tabs: [
//             Text(L10n.tr().personalInfo, style: TStyle.semiBold_14),
//             Text(L10n.tr().goal, style: TStyle.semiBold_14),
//             Text(L10n.tr().yourChoices, style: TStyle.semiBold_14),
//           ],
//         ),

//         const SizedBox(height: 16),

//         // skip button
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: AppConst.kHorizontalPadding,
//           ),
//           child: Align(
//             alignment: AlignmentDirectional.centerEnd,
//             child: TextButton(
//               onPressed: () => cubit.goToNextPage(),
//               child: Text(
//                 L10n.tr().skip,
//                 style: TStyle.semiBold_14.copyWith(
//                   color: Theme.of(context).colorScheme.primary,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   void _handleBackNavigation(
//     BuildContext context,
//     UpdateUserInfoCubit cubit,
//   ) {
//     if (cubit.state.currentPageIndex == 0) {
//       Navigator.pop(context);
//     } else {
//       cubit.goToPreviousPage();
//     }
//   }
// }
