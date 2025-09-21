import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';

import '../../../core/presentation/assets/assets_manager.dart';
import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';
import '../../health_module/screens/health_screen.dart';
import '../../meals_module/screens/meals_screen.dart';
import '../../profile_module/screens/profile_screen.dart';
import '../../workout_module/workout_screen.dart';
import 'home_screen.dart';

class MainPage extends StatefulWidget {
  final bool isGuest;
  static String routeWithBool(bool? isGuest) =>
      "/mainPage${isGuest != null ? "?guest=$isGuest" : ""}";

  const MainPage({super.key, required this.isGuest});

  @override
  State<MainPage> createState() => _MainPageState();
}

// تم حذف المتغير غير المستخدم

class _MainPageState extends State<MainPage> {
  late List<Widget> _widgetOptions;

  @override
  void initState() {
    Session().getUserDataFromServer();

    // AppConst.rootScaffoldKey.currentContext?.read<SearchCubit>().search();
    // AppConst.rootScaffoldKey.currentContext?.read<SettingsCubit>().userChanged();
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
      const HealthScreen(),
      ProfileScreen(
        isGuest: widget.isGuest,
      ),
    ];
  }

  List<String> get titles => [
        L10n.tr().home,
        L10n.tr().exercises,
        L10n.tr().nutritions,
        L10n.tr().medicalSection,
        L10n.tr().profile
      ];
  int _selectedIndex = 0;

  // late bool

  void _onItemTapped(int index) {
    final user = Session().currentUser;
    // print("continue");
    if (user?.hasValidSubscription ?? false) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      if (index != 0 || index != 4) {
        setState(() {
          _selectedIndex = index;
        });
      } else {
        Alerts.showToast(L10n.tr().youHaveToSubscripeToAccessThisFeature,
            error: true);
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
          title: L10n.tr().home,
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
          title: L10n.tr().exercises,
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
          title: L10n.tr().nutritions,
          isActive: _selectedIndex == 2,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: const Color(0xff6B7280),
        ),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: const Color(0xff6B7280),
      ),
      PersistentBottomNavBarItem(
        icon: CustomNavBarItem(
          iconPath: Assets.iconsMedical,
          title: L10n.tr().medicalSection,
          isActive: _selectedIndex == 3,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: const Color(0xff6B7280),
        ),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: const Color(0xff6B7280),
      ),
      PersistentBottomNavBarItem(
        icon: CustomNavBarItem(
          iconPath: AssetsManager.profile,
          title: L10n.tr().profile,
          isActive: _selectedIndex == 4,
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
        backgroundColor: Co.backGround,
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
                backgroundColor: Co.backGround,
                centerTitle: true,
                title: Text(
                  titles[_selectedIndex],
                  style: TStyle.semiBold_14.copyWith(color: Colors.white),
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

          backgroundColor: Co.backGround,
          handleAndroidBackButtonPress: false,
          resizeToAvoidBottomInset: true,
          // Prevent page compression
          selectedTabScreenContext: (context) {
            print("selected index $_selectedIndex");
            return Scaffold(
              body: _widgetOptions[_selectedIndex],
            );
          },
          // navBarHeight: 60,
          onItemSelected: (index) {
            print("index :$index");
            // final user = Session().currentUser;
            // setState(() {
            print("tapped");
            _onItemTapped(index);
            // });
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
          colorFilter: ColorFilter.mode(
            isActive ? activeColor : inactiveColor,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(
            height: 4), // Adjust this value for spacing between icon and text
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? activeColor : inactiveColor,
              fontSize: 12,
              fontWeight: FontWeight.w600, // Adjust as needed
            ),
          ),
        ),
      ],
    );
  }
}
