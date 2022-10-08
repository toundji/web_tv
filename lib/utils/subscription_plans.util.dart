// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web_tv/utils/background.util.dart';

import 'button.util.dart';

class SubscriptionPlans extends StatefulWidget {
  const SubscriptionPlans({Key? key}) : super(key: key);

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  bool monthly = false;
  bool threeMonthly = false;
  bool yearly = false;
  bool isMomo = false;
  bool isBankCard = false;

  @override
  Widget build(BuildContext context) {
    return Background(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Flex(
          direction: Axis.vertical,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 8,
                  child: Text(
                    "1. Choisissez votre abonnement",
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 190, 41, 31),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(flex: 2, child: SizedBox())
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 2,
                ),
                Flexible(
                  flex: 9,
                  child: CheckboxListTile(
                    title: Text(
                      "Forfait mensuel: 3.500 F CFA",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ), //    <-- label
                    value: monthly,
                    onChanged: (newValue) {
                      setState(() {
                        monthly = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Flexible(flex: 2, child: SizedBox())
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 2,
                ),
                Flexible(
                  flex: 10,
                  child: CheckboxListTile(
                    title: Text(
                      "Forfait trimestriel: 10.000 F CFA",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ), //    <-- label
                    value: threeMonthly,
                    onChanged: (newValue) {
                      setState(() {
                        threeMonthly = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 2,
                ),
                Flexible(
                  flex: 10,
                  child: CheckboxListTile(
                    title: Text(
                      "Forfait annuel: 36.000 F CFA",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ), //    <-- label
                    value: yearly,
                    onChanged: (newValue) {
                      setState(() {
                        yearly = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 10,
                  child: Text(
                    "2. Choisissez le mode de paiement",
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 195, 37, 26),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 8,
                  child: CheckboxListTile(
                    title: Text(
                      "Mobile Money",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ), //    <-- label
                    value: isMomo,
                    onChanged: (newValue) {
                      setState(() {
                        isMomo = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 8,
                  child: CheckboxListTile(
                    title: Text(
                      "Carte Bancaies",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ), //    <-- label
                    value: isBankCard,
                    onChanged: (newValue) {
                      setState(() {
                        isBankCard = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  flex: 7,
                  child: SimpleButton(
                    radius: 5,
                    color: Color.fromARGB(255, 181, 31, 21),
                    fontColor: Color.fromARGB(255, 219, 214, 214),
                    text: "Je paie maintenant",
                    width: 200,
                    height: 50,
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
