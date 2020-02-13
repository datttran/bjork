import 'dart:ui';
import 'package:bjork/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  int shareValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        height: verticalPixel*60,
        child: Material(
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),

            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                width: horizontalPixel*70,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: CupertinoSlidingSegmentedControl(
                    padding: EdgeInsets.symmetric(horizontal: verticalPixel),
                    onValueChanged: (int val){
                      setState(() {
                        shareValue = val;
                      });

                    },
                    children: userPages,
                    groupValue: shareValue ,
                  )
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



final Map<int, Widget> userPages = {
  0: Text('Log in'),
  1: Text('Register')
};


//Column(
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.stretch,
//    children: <Widget>[
//
//      SizedBox(
//        height: 48.0,
//      ),
//      TextField(
//        onChanged: (value) {
//          //Do something with the user input.
//        },
//        decoration: InputDecoration(
//          hintText: 'Enter your email',
//          contentPadding:
//          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//          border: OutlineInputBorder(
//            borderRadius: BorderRadius.all(Radius.circular(32.0)),
//          ),
//          enabledBorder: OutlineInputBorder(
//            borderSide:
//            BorderSide(color: Colors.lightBlueAccent, width: 1.0),
//            borderRadius: BorderRadius.all(Radius.circular(32.0)),
//          ),
//          focusedBorder: OutlineInputBorder(
//            borderSide:
//            BorderSide(color: Colors.lightBlueAccent, width: 2.0),
//            borderRadius: BorderRadius.all(Radius.circular(32.0)),
//          ),
//        ),
//      ),
//      SizedBox(
//        height: 8.0,
//      ),
//      TextField(
//        onChanged: (value) {
//          //Do something with the user input.
//        },
//        decoration: InputDecoration(
//          hintText: 'Enter your password.',
//          contentPadding:
//          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//          border: OutlineInputBorder(
//            borderRadius: BorderRadius.all(Radius.circular(32.0)),
//          ),
//          enabledBorder: OutlineInputBorder(
//            borderSide:
//            BorderSide(color: Colors.lightBlueAccent, width: 1.0),
//            borderRadius: BorderRadius.all(Radius.circular(32.0)),
//          ),
//          focusedBorder: OutlineInputBorder(
//            borderSide:
//            BorderSide(color: Colors.lightBlueAccent, width: 2.0),
//            borderRadius: BorderRadius.all(Radius.circular(32.0)),
//          ),
//        ),
//      ),
//      SizedBox(
//        height: 24.0,
//      ),
//      Padding(
//        padding: EdgeInsets.symmetric(vertical: 16.0),
//        child: Material(
//          color: Colors.lightBlueAccent,
//          borderRadius: BorderRadius.all(Radius.circular(30.0)),
//          elevation: 5.0,
//          child: MaterialButton(
//            onPressed: () {
//              //Implement login functionality.
//            },
//            minWidth: 200.0,
//            height: 42.0,
//            child: Text(
//              'Log In',
//            ),
//          ),
//        ),
//      ),
//    ],
//  ),