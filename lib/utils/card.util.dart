import 'package:flutter/material.dart';
import 'package:web_tv/utils/constants.util.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSubscriptionNotification(context);
      },
      child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(20),
          child: Image.network(
            "https://api.lorem.space/image/movie?w=152&h=220",
            fit: BoxFit.fill,
            width: 125,
            height: 125,
          )),
    );
  }
}
