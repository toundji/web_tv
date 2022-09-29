import 'package:flutter/material.dart';
import 'package:web_tv/screens/chaine_info.screen.dart';
import 'package:web_tv/screens/communaute.screen.dart';
import 'package:web_tv/utils/app_layout.util.dart';
import 'package:web_tv/utils/constants.util.dart';
import 'app.util.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final String title = "jawuntad";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appGradient,
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 35, left: 24, bottom: 15),
                child: Image.asset("assets/images/logo_jawuntaa.png")),
            getMenu("Action"),
            getMenu("A propos de nous"),
            getMenu("Film & Emissions"),
            getMenu("Casting", screen: ChaineInfoScreen()),
            getMenu("Boutique"),
            getMenu("Espace Annonceurs"),
            getMenu("communauté", isActive: true, screen: AppLayout(screenIndex: 1,)),
            getMenu("Mon compte"),
          ],
        ),
      ),
    );
  }

  Widget getMenu(String title, {Widget? screen, bool? isActive}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          isActive == true
              ? Container(
                  height: 45,
                  width: 8.0,
                  color: Colors.red,
                  margin: EdgeInsets.only(left: 4, bottom: 16),
                )
              : Container(
                  width: 8.0,
                ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: screen != null
                      ? () {
                          AppUtils.goToScreen(context, screen);
                        }
                      : null,
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white.withOpacity(0.75),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 25),
                  child: Divider(color: Colors.white.withOpacity(0.65)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
