import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Center(
            child:Container(
              width: 85,
              height: 85,
              margin: const EdgeInsets.only(top : 21),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/user.png')
                )
              ),
            )
      ),
      Container(
        margin: const EdgeInsets.only(top : 21),
            child : Text('CodePrim', style: TextStyle(fontFamily: 'Montserrat', fontSize: 21, fontWeight: FontWeight.w800),)
      ),
            Container(
                margin: const EdgeInsets.only(top : 21),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xffffd600),
                  borderRadius: BorderRadius.circular(5)
                ),
                child : Text('Logout', style: TextStyle(fontFamily: 'Montserrat', fontSize: 21, fontWeight: FontWeight.w800),)
            )
          ],
        ),
      ),
    );
  }
}