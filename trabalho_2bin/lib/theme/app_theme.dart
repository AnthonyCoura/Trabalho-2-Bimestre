import 'package:flutter/material.dart';
 
const primaryGreen = Color(0xFF4CAF50); // #4CAF50
const backgroundWhite = Color(0xFFFAFAFA); // #FAFAFA
const darkGray = Color(0xFF333333);
 
final AppTheme = ThemeData(
  primaryColor: primaryGreen,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryGreen,
    secondary: primaryGreen.withOpacity(0.9),
  ),
  scaffoldBackgroundColor: backgroundWhite,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryGreen,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textTheme: TextTheme(
    headline6: TextStyle(color: darkGray, fontSize: 18, fontWeight: FontWeight.w600),
    bodyText1: TextStyle(color: darkGray, fontSize: 14),
    bodyText2: TextStyle(color: darkGray.withOpacity(0.8), fontSize: 13),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryGreen,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    ),
  ),
);