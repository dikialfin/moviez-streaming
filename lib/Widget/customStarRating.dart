import 'package:flutter/material.dart';

class CustomStarRating extends StatelessWidget {
  final int rating;

  const CustomStarRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> listStar = [];
    int maxRate = 5;

    Widget starYellow = Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/Img/Icon/Star_Yellow.png'))),
    );

    Widget greyStar = Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/Img/Icon/Star_Grey.png'))),
    );

    for (var i = 0; i < maxRate; i++) {
      if (i < rating) {
        listStar.add(starYellow);
      } else {
        listStar.add(greyStar);
      }
    }

    return Container(
      child: Row(
        children: listStar,
      ),
    );
  }
}
