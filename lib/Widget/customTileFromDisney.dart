import 'package:flutter/material.dart';
import 'package:moviez/Widget/customStarRating.dart';
import 'package:moviez/themes.dart';

class CustomTileFromDisney extends StatelessWidget {
  final String tittle, genre, urlImage;
  final int rating;

  const CustomTileFromDisney(
      {Key? key,
      required this.tittle,
      required this.genre,
      required this.urlImage,
      this.rating = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 127,
      child: Row(children: [
        // Image
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 127,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(urlImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(24)),
        ),
        // tittle rating and genre
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tittle,
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    genre,
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
            CustomStarRating(rating: rating)
          ],
        )
      ]),
    );
  }
}
