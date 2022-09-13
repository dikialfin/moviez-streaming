import 'package:flutter/material.dart';
import 'package:moviez/Widget/customStarRating.dart';
import 'package:moviez/themes.dart';

class CustomCardSlider extends StatelessWidget {
  final String tittle, genre, urlImage;
  final int rating;

  const CustomCardSlider(
      {Key? key,
      required this.tittle,
      required this.genre,
      required this.urlImage,
      this.rating = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: 300,
      height: 279,
      child: Column(children: [
        // image cover
        Container(
          width: double.infinity,
          height: 207,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(image: AssetImage(urlImage))),
        ),
        // Tittle and rating
        Container(
          margin: EdgeInsets.only(top: 19),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tittle,
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  genre,
                  style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w200, fontSize: 16),
                ),
              ],
            ),
            CustomStarRating(rating: rating)
          ]),
        )
      ]),
    );
  }
}
