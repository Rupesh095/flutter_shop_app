import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Shop();

}

class _Shop extends State<Shop> {

  final List<String> images = [
    'images/Boost.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    ];

  final List<String> image = [
    'images/Boost.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    'images/img4.jpg',
    'images/img5.jpeg',
    'images/img6.jpg',
    'images/img7.jpg',
    'images/colgate.jpg',
  ];

  final List<String> names = [
    'Boost',
    'Lizol',
    'Rasan Combo',
    'Dettol',
    'Parle G',
    'Surf Excel',
    'Bourn Vita',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4/2,
              child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Center(
                        child: Image(image : AssetImage(images[index]), fit: BoxFit.cover, width: 1000),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true
                  )
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child:Container(
                margin: EdgeInsets.only(top: 21, left: 20),
                child: Text('Products', style: TextStyle(fontSize: 28, fontFamily: 'Montserrat', fontWeight: FontWeight.w800),),
              ) ,
            ),
            AspectRatio(
              aspectRatio: 9/8,
              child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
                            child: Image(image : AssetImage(image[index]), fit: BoxFit.cover, width: 1000),
                          ),
                           Container(
                             margin: const EdgeInsets.only(left: 16),
                               child : Center(
                                   child: Text('${names[index]}', style: TextStyle(fontSize: 21, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),)
                               )
                           )
                        ],
                      ),
                    );
                  }
              )
            )


          ],
        )
      ),
    );
  }
}