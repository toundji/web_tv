// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'background.util.dart';
import 'button.util.dart';
import 'constants.util.dart';

class SubscriptionNotif extends StatelessWidget {
  const SubscriptionNotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      height: MediaQuery.of(context).size.height * 0.46,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Flex(
          direction: Axis.vertical,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Flexible(
                    flex: 9,
                    child: Text(
                      "Abonnez-vous pour accéder à ce programme",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                Flexible(
                  flex: 1,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Flexible(
                    flex: 7,
                    child: Text(
                      "Coût de l'abonnement",
                      style: TextStyle(
                          color: Color.fromARGB(255, 190, 41, 31),
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    )),
                Flexible(
                  flex: 3,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Flexible(
                    flex: 7,
                    child: Text(
                      "Forfait mensuel : 3.500 F CFA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Flexible(
                  flex: 3,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Flexible(
                    flex: 7,
                    child: Text(
                      "Forfait trimestriel : 10.000 F CFA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Flexible(
                  flex: 3,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Flexible(
                    flex: 7,
                    child: Text(
                      "Forfait annuel : 36.000 F CFA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Flexible(
                  flex: 3,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 7,
                  child: SimpleButton(
                    color: Color.fromARGB(255, 175, 18, 18),
                    radius: 5,
                    fontColor: Color.fromARGB(255, 219, 214, 214),
                    text: "Je m'abonne",
                    centerText: true,
                    width: 200,
                    height: 40,
                    onPressed: () {
                      Navigator.pop(context);
                      showSubscriptionsPlan(context);
                    },
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: SizedBox(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
