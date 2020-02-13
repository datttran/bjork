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
  void _onButtonPress(value) {
    _pageController.animateToPage(value,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }


  int shareValue = 0;
  PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
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
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      CupertinoSlidingSegmentedControl(
                        padding: EdgeInsets.symmetric(horizontal: verticalPixel),
                        onValueChanged: (int val){
                          shareValue = val;


                          setState(() {

                            if(val == 0){

                              userPages = setColor(Colors.black, Colors.white);


                            }
                            else{

                              userPages = setColor(Colors.white, Colors.black);


                            }


                          });

                        },
                        children: userPages,
                        groupValue: shareValue ,
                      ),
                      Expanded(
                        child: PageView(

                          controller: _pageController,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints.expand(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[

                                  SizedBox(
                                    height: 48.0,
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      //Do something with the user input.
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  TextField(
                                    onChanged: (value) {
                                      //Do something with the user input.
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password.',
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.0),
                                    child: Material(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                      elevation: 5.0,
                                      child: MaterialButton(
                                        onPressed: () {
                                          //Implement login functionality.
                                        },
                                        minWidth: 200.0,
                                        height: 42.0,
                                        child: Text(
                                          'Log In',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints.expand(),
                                child: Text('Hi'))
                          ],
                        ),
                      )
                      //loginBoxes[shareValue],
                    ],
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

Map userPages = setColor(left,right);
setColor(left  , right){
  return  {
    0: Text('Log in', style: TextStyle(color: left),),
    1: Text('Register', style: TextStyle(color: right), )
  };
}

Color left ;
Color right =  Colors.white;

