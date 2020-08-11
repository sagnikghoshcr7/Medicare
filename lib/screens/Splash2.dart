import 'package:flutter/material.dart';
import 'package:foodelivery/screens/Splash3.dart';

import '../navigatorAnimation/bouncinganagivation.dart';
import 'Home_Screen.dart';

class Splash2 extends StatelessWidget {
  Splash2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 20, left: 325, right: 23, top: 23),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                              height: 42.00,
                              width: 43.00,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/a2.jpg"),
                                ),
                                border: Border.all(
                                  width: 1.00,
                                  color: Color(0xff707070),
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(43.00, 42.00)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23, right: 23),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Container(
                            height: 350,
                            width: 500,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Pre.jpg"),
                                fit: BoxFit.fill,
                                alignment: Alignment.topCenter,
                              ),
                              border: Border.all(
                                  width: 1.0, color: Colors.green[200]),
                              borderRadius: BorderRadius.circular(30.00),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 29, left: 23, right: 23, top: 27),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Prescription Drugs",
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "\nFor any health questions, our doctors are ready to help Doctorfinder is now the largest website where people can get answers from Doctors",
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 20,
                            color: Colors.black45,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10, left: 23, right: 23, top: 23),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                          child: Text(
                            "        SKIP",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black54,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              FadeNavigation(
                                widget: CreateAccount(),
                              ),
                            );
                          },
                        )),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.green[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              '    Next    ▶',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {Navigator.push(
                              context,
                              FadeNavigation(
                                widget: Splash3(),
                              ),
                            );},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
