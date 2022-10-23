import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_shop_app/configs/configs.dart';

// For App Color
const Color kPrimaryColor = Color(0xFFEA8C00);
const Color kSecondaryColor = Color(0xFFB5B5B5);

const Color kBackgroundColor1 = Color(0xFF18171B);
const Color kBackgroundColor2 = Color(0xFF26252B);

Color kBackgroundColor3 = Color(0xFFEA8C00).withOpacity(0.20);

//For Text Color
const Color kPrimaryTextColor = Color(0xFFFFFFFF);
Color kSubtitleTextColor = Color(0xFF999A9A).withOpacity(0.5);

// Costum text style
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryTextColor,
);

TextStyle muteTextStyle = GoogleFonts.poppins(
  color: Color(0xFF373639),
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: kSubtitleTextColor,
);

TextStyle orangeTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

// padding
double defaultPadding = getProperWidht(24);
