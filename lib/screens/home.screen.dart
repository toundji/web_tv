// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_tv/utils/card.util.dart';
import 'package:web_tv/utils/constants.util.dart';
import '../utils/base_scaffold.util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String id = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 6);
    return Timer(
      duration,
      showRegistrationForm
    );
  }

  showRegistrationForm() {
    showRegistrationModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      scaffoldBody: ListView(
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Image.network(
                  "https://api.lorem.space/image/movie?w=158&h=220",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Text(
              "Films & émissions",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CarouselSlider(
              items: [
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
              ],
              options: CarouselOptions(
                height: 120.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 3,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.6,
              )),
          CarouselSlider(
              items: [
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
              ],
              options: CarouselOptions(
                height: 120.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.6,
              )),
          CarouselSlider(
              items: [
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
              ],
              options: CarouselOptions(
                height: 120.0,
                enlargeCenterPage: false,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.6,
              )),
        ],
      ),
    );
  }
}
