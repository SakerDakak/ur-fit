import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/modules/auth_module/splash_screen/presentation/manager/check_version_cubit.dart';

import '../../../core/assets_manager.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/fonts.dart';
import '../../../core/utils/service_locator.dart';
import '../bloc/authentication_bloc/authentication_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const route = "splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        final versionCubit = context.read<CheckVersionCubit>();
        versionCubit.checkVersion();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckVersionCubit, CheckVersionState>(
      listener: (context, state) {
        if (state is VersionForceUpdateRequired) {
          _showForceUpdateBottomSheet(state.minimumVersion);
        } else if (state is VersionUpdateAvailable) {
          _showUpdateBottomSheet(state.latestVersion);
        } else if (state is VersionUpToDate) {
          sl<AuthenticationBloc>().add(AppStarted());
        } else if (state is VersionError) {
          sl<AuthenticationBloc>().add(AppStarted());
          // sl<AuthenticationBloc>().add(AppStarted());
          // Handle error, e.g., show a message to the user
          print('Version error: ${state.message}');
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backGround,
          body: Center(child: Image.asset(AssetsManager.logo)),
        );
      },
    );
  }

  void _showForceUpdateBottomSheet(String minimumVersion) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      isScrollControlled: true, // Allow full-height bottom sheet
      builder: (context) => Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(""),
            Text(
              'حان وقت التحديث',
              style: CustomTextStyle.regular_16,

              // style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            Text(
              'أخبار حماسية! قمنا بإصدار التحديث $minimumVersion للتطبيق.',
              textAlign: TextAlign.center,
              style: CustomTextStyle.regular_14,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Future<void> launchAppStore() async {
                    final platform = Theme.of(context).platform;

                    final url = platform == TargetPlatform.iOS
                        ? 'https://apps.apple.com/us/app/qanoniah/id6648785147?platform=iphone'
                        : 'https://play.google.com/store/apps/details?id=com.adalah.qanoniah';

                    // if (await canLaunch(url)) {
                    //   await launch(url);
                    // } else {
                    //   // Handle the case where the user doesn't have a way to open the URL
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Could not launch app store')),
                    //   );
                    // }
                  }

                  launchAppStore();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F95E8),
                ),
                child: Text('حدث الآن', style: CustomTextStyle.regular_14.copyWith(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showUpdateBottomSheet(String latestVersion) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      isScrollControlled: true, // Allow full-height bottom sheet
      builder: (context) => Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(""),
            Text(
              'حان وقت التحديث',
              style: CustomTextStyle.regular_16,
              // style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            Text(
              'أخبار حماسية! قمنا بإصدار التحديث $latestVersion للتطبيق. ',
              textAlign: TextAlign.center,
              style: CustomTextStyle.regular_14,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Future<void> launchAppStore() async {
                        final platform = Theme.of(context).platform;

                        final url = platform == TargetPlatform.iOS
                            ? 'https://apps.apple.com/us/app/qanoniah/id6648785147?platform=iphone'
                            : 'https://play.google.com/store/apps/details?id=com.adalah.qanoniah';

                        // if (await canLaunch(url)) {
                        //   await launch(url);
                        // } else {
                        //   // Handle the case where the user doesn't have a way to open the URL
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Could not launch app store')),
                        //   );
                        // }
                      }

                      launchAppStore();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F95E8),
                    ),
                    child: Text('حدث الآن', style: CustomTextStyle.regular_14.copyWith(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      sl<AuthenticationBloc>().add(AppStarted());
                    },
                    child: Text('استمرار', style: CustomTextStyle.regular_14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
