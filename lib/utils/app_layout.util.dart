import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:web_tv/screens/home.screen.dart';
import 'app_bar.dart';
import 'constants.util.dart';
import 'drawer.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key, this.screenIndex = 0, this.initialScreen = const HomeScreen()});

  final int screenIndex;
  final Widget initialScreen;

  static String id = "app_layout";

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  late DateTime currentBackPressTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController tabController =
        PersistentTabController(initialIndex: widget.screenIndex);
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: AppDrawer(),
      appBar: appBar(),
      body: PersistentTabView(
        context,
        controller: tabController,
        screens: buildScreens(homeScreenReplacement: widget.initialScreen),
        items: navBarsItems(context),
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: 60,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: bottomNavBarDecoration,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 250),
        ),
        navBarStyle: NavBarStyle.style6,
        //onWillPop: onWillPop
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    String exitWarning = "Cliquer une seconde fois pour quitter l'application";
    if (now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: exitWarning);
      return Future.value(false);
    }
    SystemNavigator.pop();
    return Future.value(true);
  }
}
