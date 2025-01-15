import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Feathurs/cart/presention/view/cart_view.dart';
import 'package:elrawee/Feathurs/home/presention/view/home_view.dart';
import 'package:elrawee/Feathurs/profile/presention/view/profile_view.dart';
import 'package:elrawee/Feathurs/search/presention/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  HomeNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      // popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.only(top: 4),
      backgroundColor: AppColor.navBarColor,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 350),
          curve: Curves.easeInCubic,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 150),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.neumorphic,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    HomeView(),
    CartView(),
    SearchView(),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.home),
      icon: Icon(CupertinoIcons.house_fill),
      title: ("Home"),
      activeColorPrimary: AppColor.primaryColor,
      inactiveColorPrimary: AppColor.formColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.cart),
      icon: Icon(CupertinoIcons.cart_fill),
      title: ("cart"),
      activeColorPrimary: AppColor.primaryColor,
      inactiveColorPrimary: AppColor.formColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.search_circle),
      icon: Icon(CupertinoIcons.search_circle_fill),
      title: ("search"),
      activeColorPrimary: AppColor.primaryColor,
      inactiveColorPrimary: AppColor.formColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.person_alt_circle),
      icon: Icon(CupertinoIcons.person_alt_circle_fill),
      title: ("Settings"),
      activeColorPrimary: AppColor.primaryColor,
      inactiveColorPrimary: AppColor.formColor,
    ),
  ];
}
