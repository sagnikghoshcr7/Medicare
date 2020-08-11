import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodelivery/utils/color.dart';
import 'package:foodelivery/utils/styleguide.dart';
import 'package:foodelivery/widgets/google_facebook_login.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  Map<String, String> _signupData = {
    'name': '',
    'mobileNo': '',
    'email': '',
    'password': '',
    'confirm_password': ''
  };
  Future<void> _submit(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      // Invalid! test
      return;
    }
    _formKey.currentState.save();

    if (_signupData['password'] != _signupData['confirm_password']) {
      Scaffold.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        content: Text(
          "Password and Confirm password did not match",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.black87,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.grey[200],
        bottomOpacity: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColorDark,
                        fontSize: 30),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        borderOnForeground: true,
                        child: Container(
                          padding: EdgeInsets.all(7),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            autocorrect: true,
                            cursorColor: Colors.black,
                            cursorRadius: Radius.circular(10),
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: Icon(FontAwesomeIcons.userCircle),
                                    onPressed: () {}),
                                labelText: "Your name",
                                labelStyle: buildTextStyle(),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                border: InputBorder.none),
                            validator: (value) {
                              value = value.trim();

                              if (value.isEmpty) {
                                return 'Please tell us your name';
                              }
                            },
                            onSaved: (value) {
                              _signupData['name'] = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        borderOnForeground: true,
                        child: Container(
                          padding: EdgeInsets.all(7),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            autocorrect: true,
                            cursorColor: Colors.black,
                            cursorRadius: Radius.circular(10),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(FontAwesomeIcons.envelopeSquare),
                                  onPressed: () {}),
                              labelStyle: buildTextStyle(),
                              labelText: "Email / Mobile No.",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              value = value.trim();
                              bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);

                              if (value.isEmpty) {
                                return 'Please provide email-id to signup';
                              }
                              if (!emailValid) {
                                return 'Please provide a valid email-id';
                              }
                            },
                            onSaved: (value) {
                              _signupData['email'] = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          child: TextFormField(
                            obscureText: true,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            autocorrect: true,
                            cursorRadius: Radius.circular(10),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(FontAwesomeIcons.eye),
                                  onPressed: () {}),
                              labelStyle: buildTextStyle(),
                              labelText: "Password",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              value = value.trim();
                              if (value.isEmpty) {
                                return 'Password is required to signup';
                              }
                            },
                            onSaved: (value) {
                              _signupData['password'] = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          child: TextFormField(
                            obscureText: true,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            autocorrect: true,
                            cursorRadius: Radius.circular(10),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(FontAwesomeIcons.eye),
                                  onPressed: () {}),
                              labelStyle: buildTextStyle(),
                              labelText: "Confirm Password",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              value = value.trim();
                              if (value.isEmpty) {
                                return 'Confirm password is required to signup';
                              }
                            },
                            onSaved: (value) {
                              _signupData['confirm_password'] = value;
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  width: width * 0.68,
                  height: height * 0.07,
                  child: RaisedButton(
                      color: primaryColoropacity,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => _submit(context),
                      animationDuration: Duration(milliseconds: 600),
                      child: Text(
                        'Sign up',
                        style: titleStyle,
                      )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text('Or sign up with social account'),
                SizedBox(
                  height: height * 0.03,
                ),
                GoggleFacebookLogin(screenWidth: width, screenHeight: height)
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle buildTextStyle() => TextStyle(color: Colors.grey);

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue[500], width: 1.5),
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
    );
  }
}
