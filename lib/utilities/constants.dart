import 'package:flutter/material.dart';

// File to hold all the constants that shall be used across the
// app UI.

const kRupeeSymbolUnicode = '\u20B9';

const kRuhmTitleTextStyle = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w600,
  color: Color(0xFF08D9D6),
);

const kRuhmPrimaryColor = Color(0xFF08D9D6);

const kCustomerIcon = Icon(Icons.person, color: Colors.white);

const kHomeIcon = Icon(Icons.home, color: Colors.white);

const kAppBarTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
);

const kTitleTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

const kRegularTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
);

const kLogInBoxDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/farmer_background.png'),
    fit: BoxFit.cover,
  ),
);

const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 24.0,
);
