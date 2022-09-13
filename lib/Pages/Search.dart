import 'package:flutter/material.dart';
import 'package:moviez/themes.dart';
import 'package:moviez/Widget/customTileFromDisney.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFBFBFD),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
          children: [
            // search box
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(24)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xff0D0846)),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                cursorColor: Color(0xff0D0846),
              ),
            ),
            // Search Result
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Text(
                    'Search Result',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(3)',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w200, fontSize: 20),
                  ),
                ],
              ),
            ),
            // RESULT TILE
            CustomTileFromDisney(
              urlImage: 'Assets/Img/Cover/image5.png',
              tittle: 'The Dark II',
              genre: 'Horror',
              rating: 4,
            ),
            CustomTileFromDisney(
              urlImage: 'Assets/Img/Cover/image6.png',
              tittle: 'The Dark Knight',
              genre: 'Heroes',
              rating: 5,
            ),
            CustomTileFromDisney(
              urlImage: 'Assets/Img/Cover/image7.png',
              tittle: 'The Dark Tower',
              genre: 'Action',
              rating: 4,
            ),
            // BUTTON
            Container(
              margin: EdgeInsets.only(top: 70),
              width: 220,
              height: 60,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Suggest Movie',
                    style: whiteTextStyle.copyWith(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff0D0846),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)))),
            )
          ],
        ));
  }
}
