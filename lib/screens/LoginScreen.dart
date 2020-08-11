import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodelivery/navigatorAnimation/bouncinganagivation.dart';
import 'package:foodelivery/screens/Home_Screen.dart';
import 'package:foodelivery/screens/SignUpScreen.dart';
import 'package:foodelivery/screens/Splash1.dart';
import 'package:foodelivery/utils/color.dart';
import 'package:foodelivery/utils/styleguide.dart';
import 'package:foodelivery/widgets/google_facebook_login.dart';

import 'Home_Screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  Map<String, String> _loginData = {'username': '', 'password': ''};
  bool isLoading = false;
  Future<void> _submit(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      // Invalid! test
      return;
    }
    _formKey.currentState.save();
    print(_loginData);
    if (_loginData['username'] == 'karangore518@gmail.com' &&
        _loginData['password'] == 'Karan@1998') {
      setState(() {
        isLoading = false;
      });
      Navigator.push(context, DownSlideNavigation(widget: CreateAccount()));
    } else {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        content: Text(
          "Invalid User! Please signup to login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.black87,
      ));
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.19),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                fit: BoxFit.cover,
                image: ExactAssetImage('assets/images/background.png'))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.18,
              ),
              Text(
                'MEDICARE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        cursorColor: primaryColor,
                        cursorRadius: Radius.circular(10),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            FontAwesomeIcons.userCircle,
                            color: primaryColorDark,
                          ),
                          hintText: "Email / Mobile No.",
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          value = value.trim();
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);

                          if (value.isEmpty) {
                            return 'Please provide email-id to login';
                          }
                          if (!emailValid) {
                            return 'Please provide a valid email-id';
                          }
                        },
                        onSaved: (value) {
                          _loginData['username'] = value;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        cursorRadius: Radius.circular(10),
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(
                              FontAwesomeIcons.lock,
                              color: primaryColorDark,
                            ),
                            hintText: "Password",
                            border: InputBorder.none),
//                        validator: (value) {
////                          value = value.trim();
////                          if (value.isEmpty) {
////                            return 'Password is required to login';
////                          }
//                        },
                        onSaved: (value) {
                          _loginData['password'] = value;
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                width: width * 0.48,
                height: height * 0.08,
                child: RaisedButton(
                    color: primaryColoropacity,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Splash1())),
                    animationDuration: Duration(milliseconds: 600),
                    child: isLoading
                        ? CircularProgressIndicator()
                        : Text(
                            'Login',
                            style: titleStyle,
                          )),
              ),
              SizedBox(
                height: height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text("Dont't have a account? ",
                              style: TextStyle(fontSize: 16)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  FadeNavigation(widget: SignUpScreen()));
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                  color: primaryColorDark,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              GoggleFacebookLogin(screenWidth: width, screenHeight: height)
            ],
          ),
        ),
      ),
    );
  }
}
