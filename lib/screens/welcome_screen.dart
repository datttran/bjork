import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bjork/constants.dart';
import 'package:bjork/responsive/size_config.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  static String id  = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);



  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff130a47), Color(0xff2d062d) ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: verticalPixel*10,),
            Container(
              child: Image.asset('images/logo.png'),
              height: verticalPixel*28,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Welcome to',
                          style: TextStyle(color: Colors.white, fontSize: verticalPixel*3.7),),
                      Text(' Björk',
                        style: TextStyle(color: Colors.white, fontSize: verticalPixel*3.7  ,fontStyle: FontStyle.italic),),
                    ],
                  ),
                ),

                SizedBox(height: verticalPixel,),
                Text('A simple chat platform for \neveryday use',
                    style: TextStyle(color: Colors.white, fontSize: verticalPixel*2)),
              ],
            ),


            SizedBox(
              height: verticalPixel*25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: verticalPixel*7),
              child: MaterialButton(
                elevation: 0,
                //color: Color(0xff7663E9),
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  print(verticalPixel);
                  //Go to login screen.
                },

                child: Ink(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff68b3ec), Color(0xff440598) ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,

                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: verticalPixel*2, horizontal: verticalPixel*4),
                    child: FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                              'Log in with ',
                              style: TextStyle(color: Colors.white, fontSize: verticalPixel*2  )
                          ),
                          Text(' Björk',
                            style: TextStyle(color: Colors.white, fontSize: verticalPixel*2.5  ,fontStyle: FontStyle.italic),),
                        ],),
                    ),
                  ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: GestureDetector(
                onTap: () {
                  //Go to registration screen.
                },

                child: Text(
                  "Don't have an account? Sign up here",
                  style: TextStyle(
                    color: Colors.white70,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}