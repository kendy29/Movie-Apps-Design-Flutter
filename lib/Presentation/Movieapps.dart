import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MoviesApp extends StatefulWidget {
  @override
  _MoviesAppState createState() => _MoviesAppState();
}

class _MoviesAppState extends State<MoviesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D1437),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 61,
            ),
            Container(
                child: Text(
                  "Hallo Kendy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                margin: EdgeInsets.only(left: 24)),
            Container(
                child: Text(
                  "Book your Favorite Movie",
                  style: TextStyle(fontSize: 19, color: Colors.grey),
                ),
                margin: EdgeInsets.only(left: 24)),
            Container(
              margin: EdgeInsets.only(left: 24, right: 40, top: 16),
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    decoration: BoxDecoration(
                      color: Color(0x4D757578),
                      borderRadius: BorderRadius.only(
                          bottomRight: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0)),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Cari Data",
                  fillColor: Color(0xff757578),
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
                child: Text(
                  "Feature Movie",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.white),
                ),
                margin: EdgeInsets.only(left: 24)),
            SizedBox(height: 30),
            CarouselSlider(
              options: CarouselOptions(
                height: 390.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 5.0,
                        color: Color(0xff283EAB),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/img1.png'),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 5.0,
                        color: Color(0xff283EAB),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/img2.png'),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 5.0,
                        color: Color(0xff283EAB),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/img3.png'),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 50,
        color: Color(0xff0D1437),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.home, color: Colors.white)),
            Expanded(child: Icon(Icons.search, color: Colors.white)),
            Expanded(child: Icon(Icons.star, color: Colors.white)),
            Expanded(child: Icon(Icons.person, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
