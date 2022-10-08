// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web_tv/utils/text_input_field.util.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 2),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Flex(direction: Axis.horizontal, children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Identifiant",
                  style: TextStyle(color: Color.fromARGB(255, 159, 147, 147), fontSize: 11.5),
                ),
                SizedBox(
                  width: 15,
                ),
                RoundedInputField(hintText: "*******",),
                SizedBox(
                  width: 52,
                ),
                Text(
                  "Modifier",
                  style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 3), fontSize: 10),
                ),
              ]),
              SizedBox(
                height: 4,
              ),
              Flex(direction: Axis.horizontal, children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Mot de passe",
                  style: TextStyle(color: Color.fromARGB(255, 159, 147, 147), fontSize: 11.5),
                ),
                SizedBox(
                  width: 15,
                ),
                RoundedInputField(hintText: "*********",),
                SizedBox(
                  width: 35,
                ),
                Text(
                  "Modifier",
                  style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 3), fontSize: 10),
                ),
              ]),
              SizedBox(
                height: 4,
              ),
              Flex(direction: Axis.horizontal, children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Contacts",
                  style: TextStyle(color: Color.fromARGB(255, 159, 147, 147), fontSize: 11.5),
                ),
                SizedBox(
                  width: 15,
                ),
                RoundedInputField(hintText: "*********",),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Modifier",
                  style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 3), fontSize: 10),
                ),
              ]),
              SizedBox(
                height: 4,
              ),
              Flex(direction: Axis.horizontal, children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Courriel",
                  style: TextStyle(color: Color.fromARGB(255, 159, 147, 147), fontSize: 11.5),
                ),
                SizedBox(
                  width: 15,
                ),
                RoundedInputField(hintText: "*********",),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Modifier",
                  style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 3), fontSize: 10),
                ),
              ]),
              SizedBox(
                height: 4,
              ),
              Flex(direction: Axis.horizontal, children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Statut abonnement",
                  style: TextStyle(color: Color.fromARGB(255, 159, 147, 147), fontSize: 11.5),
                ),
                SizedBox(
                  width: 15,
                ),
                RoundedInputField(hintText: "*********",),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Modifier",
                  style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 3), fontSize: 10),
                ),
              ]),
              SizedBox(
                height: 4,
              ),
              Flex(direction: Axis.horizontal, children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Catégorie d'abonné",
                  style: TextStyle(color: Color.fromARGB(255, 159, 147, 147), fontSize: 11.5),
                ),
                SizedBox(
                  width: 15,
                ),
                RoundedInputField(hintText: "*********",),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Modifier",
                  style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 3), fontSize: 10),
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
