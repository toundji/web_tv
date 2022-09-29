import 'package:flutter/material.dart';
import 'package:web_tv/screens/paused_video.dart';

import '../utils/app_utils.dart';
import '../utils/constants.util.dart';

class SessionInfoScreen extends StatefulWidget {
  const SessionInfoScreen({super.key});

  @override
  State<SessionInfoScreen> createState() => _SessionInfoScreenState();
}

class _SessionInfoScreenState extends State<SessionInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: appGradient,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Text(
                "QLPB",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 250,
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    child: AspectRatio(
                      aspectRatio: 7 / 3,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.network(
                          // "https://static3.bigstockphoto.com/2/0/3/large1500/302819938.jpg",
                          "https://img.freepik.com/photos-premium/belle-femme-culture-vietnamienne-traditionnelle-style-vintage-hanoi-vietnam_130181-168.jpg?w=740",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Card(
                          elevation: 10.0,
                          child: SizedBox(
                            width: 100,
                            height: 110,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: SizedBox.fromSize(
                                  size: Size.fromRadius(48), // Image radius
                                  child: Image.network(
                                    "https://img.freepik.com/photos-premium/belle-femme-culture-vietnamienne-traditionnelle-style-vintage-hanoi-vietnam_130181-168.jpg?w=740",
                                    fit: BoxFit.cover,
                                    colorBlendMode: BlendMode.colorDodge,
                                  )),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Session 3",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16.0, top: 8),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 0.0)),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.white.withOpacity(0.80),
                                    ),
                                    Text(
                                      "Partager",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.75),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                "15 épison",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16.0, top: 8),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 0.0)),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Colors.white.withOpacity(0.80),
                                    ),
                                    Text(
                                      "Partager",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.75),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 24 + 16, right: 24 + 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, shape: StadiumBorder()),
                onPressed: () {},
                child: Text(
                  "Regardez maintenant",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24 + 16.0, right: 24 + 14.0),
              child: Text(
                "Manifestation d'enthousiasme du public, "
                "dans un stade, les bras levés puis baissés progressivement "
                "figurant la propagation d'une vague\n\n"
                "Gâteau à pâte légère arrosé d'un sirop alcoolisé."
                "Des babas au rhum.",
                style: TextStyle(color: Colors.white.withOpacity(0.75)),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Text(
                "Les épisode",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Text(
                "Les extras",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                  _section(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _section() {
    return MaterialButton(
      onPressed: () {
        AppUtils.goToScreen(context, SessionInfoScreen());
      },
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            color: Colors.white,
            child: Center(
                child: AspectRatio(
              aspectRatio: 1.7777,
              child: Image.network(
                "https://img.freepik.com/photos-premium/belle-femme-culture-vietnamienne-traditionnelle-style-vintage-hanoi-vietnam_130181-168.jpg?w=740",
              ),
            )),
          ),
          Text(
            "Episode 1",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
