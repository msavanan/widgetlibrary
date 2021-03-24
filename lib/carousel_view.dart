import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(//mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          CarouselSlider(
            items: [
              'assets/carousel_images/justice-league.jpg',
              'assets/carousel_images/tom-and-jerry.jpg',
              'assets/carousel_images/eternal-beauty.jpg',
              'assets/carousel_images/the-little-things.jpg',
              'assets/carousel_images/a-shaun-the-sheep-movie-farmageddon.jpg',
              'assets/carousel_images/the-last-shift.jpg',
              'assets/carousel_images/wonder-woman.jpg',
              'assets/carousel_images/spiral.jpg',
              'assets/carousel_images/tenet.jpg',
              'assets/carousel_images/save-yourselves.jpg'
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        i,
                        width: double.infinity,
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * .8,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              //height: MediaQuery.of(context).size.height * .8,
              autoPlay: true,
              //enlargeCenterPage: true,
              //viewportFraction: 0.9,
              aspectRatio: .8,
              initialPage: 0,
            ),
          ),
          ElevatedButton(
            onPressed: () => buttonCarouselController.nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.linear),
            child: Text('→'),
          )
        ]),
      ), //height: 150.0,
      //width: 100.0,
    );
  }
}
