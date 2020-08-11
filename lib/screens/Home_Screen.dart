import 'package:flutter/material.dart';
import 'package:foodelivery/screens/Appointments.dart';
import 'package:foodelivery/screens/LoginScreen.dart';
import 'package:like_button/like_button.dart';

import '../navigatorAnimation/bouncinganagivation.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  String username;

  @override
  Widget build(BuildContext parentContext) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      key: _scaffoldKey,
      appBar: new AppBar(
        leading: new IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              FadeNavigation(
                widget: LoginScreen(),
              ),
            );
          },
        ),
        titleSpacing: 0.0,
        title: new Text("MEDICARE"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new IconButton(
              icon: Icon(Icons.date_range),
              onPressed: () {
                Navigator.push(
                  context,
                  FadeNavigation(
                    widget: Appointments(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(23.0),
                  child: Container(
                    child: Form(
                      key: _formKey,
                      autovalidate: true,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.search),
                          labelText: "Find a medicine",
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: "Must be at least 3 characters",
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(8.0, 2.0),
                  child: Container(
                    width: 328.0,
                    height: 168.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/delivery.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                        borderRadius: BorderRadius.circular(30.00)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(85.0, -95.0),
                  child: Text(
                    'Free Delivery',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xff707070),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(90, -78),
                  child: Container(
                    width: 116.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff15cde1),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(90, -110),
                  child: Text(
                    'Order now',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xff707070),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "   Top Company\n",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  "See All         \n",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: Color(0xff707070),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m1.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                    // child: Text("YOUR TEXT"),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m2.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                    // child: Text("YOUR TEXT"),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m3.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                    // child: Text("YOUR TEXT"),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m4.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                    // child: Text("YOUR TEXT"),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m5.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m6.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m7.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m8.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m9.jpg"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/m10.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                      border: Border.all(width: 1.0, color: Colors.green[200]),
                      borderRadius: BorderRadius.circular(30.00),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "   \n",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "   Popular Products\n",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  "See All         \n",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: Color(0xff707070),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 310,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Mask                                \nRs. 150",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              LikeButton(),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        // height: 250,
                        child: Card(
                          child: Image.asset(
                            'assets/images/n6.jpg',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Hand Sanitizer                    \nRs. 150",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              LikeButton(),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Card(
                          child: Image.asset(
                            'assets/images/n4.jpg',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Vitamin Tablets         \nRs. 150",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              LikeButton(),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        // height: 250,
                        child: Card(
                          child: Image.asset(
                            'assets/images/n1.jpg',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Multivitamin Tablets       \nRs. 150",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              LikeButton(),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        // height: 250,
                        child: Card(
                          child: Image.asset(
                            'assets/images/n2.jpg',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Glass Mask                         \nRs. 150",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              LikeButton(),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        // height: 250,
                        child: Card(
                          child: Image.asset(
                            'assets/images/n3.jpg',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Corona Capsule         \nRs. 150",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              LikeButton(),
                              Expanded(
                                child: Text(
                                  "\n\n",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Card(
                          child: Image.asset(
                            'assets/images/n5.jpg',
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "   \n",
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.green[200],
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        FadeNavigation(
                          widget: Appointments(),
                        ),
                      );
                    },
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
