import 'package:flutter/material.dart';
import 'color.dart';

class AppTheme {
  static const TextStyle display1 = TextStyle(
    color: Colors.black,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
  );

  static const TextStyle display2 = TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1,
  );

  static final TextStyle heading = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 34,
    color: Colors.white.withOpacity(0.8),
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.white.withOpacity(0.8),
  );
}

final TextStyle headingTextStyle = TextStyle(
  fontSize: 25.0,
  color: Colors.white,
  fontWeight: FontWeight.w700,
  letterSpacing: 1.1,
);
final TextStyle whiteNameTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);
final TextStyle whiteSubHeadingTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);
final TextStyle titleStyle = TextStyle(
  fontSize: 22.0,
  color: primaryTextColor,
  fontWeight: FontWeight.w600,
);
final TextStyle subTitleStyle = TextStyle(
  fontSize: 18.0,
  color: secondaryTextColor,
  fontWeight: FontWeight.w200,
);
final TextStyle actionMenuStyle = TextStyle(
  fontSize: 16.0,
  color: primaryColor,
  fontWeight: FontWeight.w600,
  letterSpacing: 5,
);
