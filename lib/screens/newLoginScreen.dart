import 'dart:ui';
import 'package:bjork/constants.dart';
import 'package:bjork/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewLoginScreen extends StatefulWidget {
  @override
  _NewLoginScreenState createState() => _NewLoginScreenState();
}

class _NewLoginScreenState extends State<NewLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.transparent,


        children: <Widget>[

          Container(
            height: verticalPixel*55,
            child: Material(
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Container(
                    width: horizontalPixel*70,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: <Widget>[

                            Text('Hello world')


                            //loginBoxes[shareValue],
                          ],
                        )
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],

    );
  }
}
