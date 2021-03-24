import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
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
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          i,
                          //width: double.infinity,

                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * .9,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 0.8,
                initialPage: 0,
              ),
            ),
            /*ElevatedButton(
              onPressed: () => buttonCarouselController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear),
              child: Text('→'),
            )*/
          ]),
    );
  }
}
