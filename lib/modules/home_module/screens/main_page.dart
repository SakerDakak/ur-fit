import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:urfit/core/shared/appCubit/app_cubit.dart';
import 'package:urfit/generated/locale_keys.g.dart';

import '../../../core/assets_manager.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/fonts.dart';
import '../../../core/utils/service_locator.dart';
import '../../auth_module/bloc/authentication_bloc.dart';
import '../../meals_module/screens/meals_screen.dart';
import '../../profile_module/screens/profile_screen.dart';
import '../../workout_module/workout_screen.dart';
import 'home_screen.dart';

class MainPage extends StatefulWidget {
  final bool isGuest;

  const MainPage({super.key, required this.isGuest});

  @override
  State<MainPage> createState() => _MainPageState();
}

bool _isBottomNavVisible = true;

class _MainPageState extends State<MainPage> {
  late List<Widget> _widgetOptions;

  @override
  void initState() {
    sl<AuthenticationBloc>().add(GetUserDataFromServer());

    // rootScaffoldKey.currentContext?.read<SearchCubit>().search();
    // rootScaffoldKey.currentContext?.read<SettingsCubit>().userChanged();
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarIconBrightness: Brightness.light,
    //   statusBarBrightness: Brightness.dark,
    // ));
    _widgetOptions = [
      HomeScreen(
        isGuest: widget.isGuest,
      ),
      const WorkoutScreen(),
      const MealsScreen(),
      ProfileScreen(
        isGuest: widget.isGuest,
      ),
    ];
  }

  final List<String> titles = [
    LocaleKeys.home.tr(),
    LocaleKeys.exercises.tr(),
    LocaleKeys.nutritions.tr(),
    LocaleKeys.profile.tr()
  ];
  int _selectedIndex = 0;

  // late bool

  void _onItemTapped(int index) {
    final user = context.read<AuthenticationBloc>().currentUser;
    if (user?.hasValidSubscription ?? false) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      if (index != 0 || index != 3) {
        setState(() {
          _selectedIndex = index;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('يجب عليك الاشتراك للوصول لهذه الخدمة'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // void _showBottomSheet() {
  //   setState(() {
  //     MainFolderWidget.isComplete = MainFolderWidget.isComplete ;
  //     _isBottomNavVisible = false;
  //   });
  // }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> get _navBarsItems {
    return [
      PersistentBottomNavBarItem(
        icon: CustomNavBarItem(
          iconPath: AssetsManager.home,
          title: LocaleKeys.home.tr(),
          isActive: _selectedIndex == 0,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: const Color(0xff6B7280),
        ),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: const Color(0xff6B7280),
      ),
      PersistentBottomNavBarItem(
        icon: CustomNavBarItem(
          iconPath: AssetsManager.workout,
          title: LocaleKeys.exercises.tr(),
          isActive: _selectedIndex == 1,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: const Color(0xff6B7280),
        ),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: const Color(0xff6B7280),
      ),
      PersistentBottomNavBarItem(
        icon: CustomNavBarItem(
          iconPath: AssetsManager.meals,
          title: LocaleKeys.nutritions.tr(),
          isActive: _selectedIndex == 2,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: const Color(0xff6B7280),
        ),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: const Color(0xff6B7280),
      ),
      PersistentBottomNavBarItem(
        icon: CustomNavBarItem(
          iconPath: AssetsManager.profile,
          title: LocaleKeys.profile.tr(),
          isActive: _selectedIndex == 3,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: const Color(0xff6B7280),
        ),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: const Color(0xff6B7280),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: ,
        backgroundColor: AppColors.backGround,
        extendBodyBehindAppBar: _selectedIndex == 0,
        extendBody: true,
        appBar: _selectedIndex == 0
            ? AppBar(
                forceMaterialTransparency: true,
                systemOverlayStyle: const SystemUiOverlayStyle(
                  // Status bar brightness (optional)

                  statusBarIconBrightness: Brightness.dark,

                  // For Android (dark icons)

                  statusBarBrightness: Brightness.light, // For iO
                ),
                automaticallyImplyLeading: false,
                shadowColor: Colors.transparent,
                elevation: 0,
                backgroundColor: Colors.transparent,
                centerTitle: false,
                actions: [],
              )
            : AppBar(
                forceMaterialTransparency: true,
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.light, // For iO
                ),
                actions: const [],
                automaticallyImplyLeading: false,
                shadowColor: Colors.transparent,
                elevation: 0,
                backgroundColor: AppColors.backGround,
                centerTitle: true,
                title: Text(
                  titles[_selectedIndex],
                  style:
                      CustomTextStyle.semiBold_14.copyWith(color: Colors.white),
                ),
              ),
        body: PersistentTabView(
          context,
          controller: _controller,
          padding: EdgeInsets.zero,
          // margin: EdgeInsets.only(bottom: 30),
          hideNavigationBarWhenKeyboardAppears: false,
          hideOnScrollSettings: HideOnScrollSettings(
            hideNavBarOnScroll: true,
            scrollControllers: [ScrollController(keepScrollOffset: true)],
          ),

          confineToSafeArea: true,
          stateManagement: false,
          screens: _widgetOptions,
          items: _navBarsItems,
          bottomScreenMargin:
              _selectedIndex == 0 ? 0 : MediaQuery.of(context).padding.top,

          backgroundColor: AppColors.backGround,
          handleAndroidBackButtonPress: false,
          resizeToAvoidBottomInset: true,
          // Prevent page compression
          selectedTabScreenContext: (context) {
            return Scaffold(
              body: _widgetOptions[_selectedIndex],
            );
          },
          // navBarHeight: 60,
          onItemSelected: (index) {
            print("index :$index");
            final user = context.read<AuthenticationBloc>().currentUser;
            setState(() {
              print("tapped");
              _onItemTapped(index);
            });
          },
          decoration: const NavBarDecoration(
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1.0)],
          ),

          animationSettings: const NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
          ),

          navBarStyle: NavBarStyle.style3, // Use Style 3
        ));
  }
}

class CustomNavBarItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool isActive;
  final Color activeColor;
  final Color inactiveColor;

  const CustomNavBarItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.isActive,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          iconPath,
          color: isActive ? activeColor : inactiveColor,
        ),
        const SizedBox(
            height: 4), // Adjust this value for spacing between icon and text
        Text(
          title,
          style: TextStyle(
            color: isActive ? activeColor : inactiveColor,
            fontSize: 12,
            fontWeight: FontWeight.w600, // Adjust as needed
          ),
        ),
      ],
    );
  }
}
