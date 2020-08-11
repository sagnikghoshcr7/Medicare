import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:after_layout/after_layout.dart';

class GoggleFacebookLogin extends StatefulWidget {
  double screenHeight;
  double screenWidth;
  GoggleFacebookLogin({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  _GoggleFacebookLoginState createState() => _GoggleFacebookLoginState();
}

class _GoggleFacebookLoginState extends State<GoggleFacebookLogin>
    with AfterLayoutMixin<GoggleFacebookLogin> {
  var googlelogin = Colors.white;
  var facebooklogin = Colors.white;
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: opacity,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              width: widget.screenWidth * 0.15,
              height: widget.screenWidth * 0.15,
              child: IconButton(
                  icon: Icon(FontAwesomeIcons.google,
                      color: const Color(0xFF4689f4)),
                  onPressed: () {})),
        ),
        AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: opacity,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              width: widget.screenWidth * 0.15,
              height: widget.screenWidth * 0.15,
              child: IconButton(
                  icon: Icon(FontAwesomeIcons.facebookF,
                      color: const Color(0xFF1877f2)),
                  onPressed: () {})),
        ),
      ],
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(
        const Duration(milliseconds: 300),
        () => {
              setState(() {
                opacity = 1;
              })
            });
  }
}
