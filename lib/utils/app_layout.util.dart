import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'constants.util.dart';
import 'functions.util.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

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
    PersistentTabController controller = PersistentTabController(initialIndex: 0);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "JawuntaaTv",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(decoration: appGradient),
      ),
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Stack(children: <Widget>[
          PersistentTabView(
            context,
            controller: controller,
            screens: buildScreens(),
            items: navBarsItems(context),
            confineInSafeArea: true,
            //backgroundColor: Colors.black,
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
          )
        ]),
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
