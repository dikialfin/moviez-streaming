import 'package:flutter/material.dart';
import 'package:moviez/Pages/Search.dart';
import 'package:moviez/Widget/customCardSlider.dart';
import 'package:moviez/Widget/customTileFromDisney.dart';
import 'package:moviez/themes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          children: [
            // header
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Moviez',
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      Text(
                        'Watch much easier',
                        style: greyTextStyle.copyWith(
                            fontWeight: FontWeight.w200, fontSize: 16),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('Assets/Img/Icon/Search.png'))),
                    ),
                  )
                ],
              ),
            ),
            // Slider
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomCardSlider(
                        tittle: 'John Wick 4',
                        genre: 'Action, Crime',
                        urlImage: 'Assets/Img/Cover/iamge1.png',
                        rating: 5,
                      ),
                      CustomCardSlider(
                        tittle: 'Bohemian',
                        genre: 'Documentary',
                        urlImage: 'Assets/Img/Cover/iamge2.png',
                        rating: 3,
                      ),
                    ],
                  )),
            ),
            // From Disney
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'From Disney',
                style: blackTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            CustomTileFromDisney(
              urlImage: 'Assets/Img/Cover/image3.png',
              tittle: 'Mulan Session',
              genre: 'History, War',
              rating: 3,
            ),
            CustomTileFromDisney(
              urlImage: 'Assets/Img/Cover/image4.png',
              tittle: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              rating: 5,
            )
          ]),
    );
  }
}
