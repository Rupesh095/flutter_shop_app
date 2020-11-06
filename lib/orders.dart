import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Orders();
}

class _Orders extends State<Orders> {

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
      body: Container(
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
                        child : Column(
                          children: [
                            Center(
                                child: Text('${names[index]}', style: TextStyle(fontSize: 21, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),)
                            ),
                            Center(
                              child: Text('Qty: 12', style: TextStyle(fontSize: 21, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),)
                            )
                          ],
                        )
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}