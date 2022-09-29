import 'package:flutter/material.dart';
import 'package:web_tv/utils/app_bar.dart';
import 'package:web_tv/utils/drawer.dart';

import '../utils/constants.util.dart';

class CommunauteScreen extends StatefulWidget {
  const CommunauteScreen({super.key});

  @override
  State<CommunauteScreen> createState() => _CommunauteScreenState();
}

class _CommunauteScreenState extends State<CommunauteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: appGradient,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: ListView(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            children: [
              Text(
                "Communaité",
                style: TextStyle(color: Colors.amber, fontSize: 20),
              ),
              SizedBox(height: 16.0),
              AspectRatio(
                aspectRatio: 5 / 3,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2019/10/31/16/17/girl-4592220_960_720.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              getTitle("Rejoindre un  forum"),
              getLink("Fan club journalisme"),
              getLink("Club des Ballet"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: Colors.white.withOpacity(0.75),
                ),
              ),

              ///
              ///
              ///
              getTitle("Rejoindre mes pages"),
              getLink("Facebook"),
              getLink("Twitter"),
              getLink("Instagram"),
              getLink("Telegram"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: Colors.white.withOpacity(0.65),
                ),
              ),

              ///
              ///
              ///
              getTitle("Contacter Jawuntad"),
              getLink("Telephone"),
              getLink("Whatsapp"),
              getLink("Skype"),
              getLink("Couriel"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: Colors.white.withOpacity(0.65),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 4),
      child: Text(
        title,
        style: TextStyle(color: Colors.amber, fontSize: 16),
      ),
    );
  }

  Widget getLink(String title) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: 35,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
        minWidth: 0,
        onPressed: () {},
        child: Row(
          children: [
            Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.65),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
