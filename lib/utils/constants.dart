import 'package:flutter/material.dart';

const String appName = 'NOTELY';
const String onboardingTitle = 'World\'s Safest and Largest Digital Notebook.';
const String onboardingSubtitle =
    'Notely is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.';
const String getStarted = 'Get Started';
const String haveAnAcc = 'Already have an account?';
const String createFreeAcc = 'Create a free account';
const String createAccDesc =
    'Join Notely for free. Create and share unlimited notes with your friends.';
const String fullName = 'Full Name';
const String email = 'Email Address';
const String password = 'Password';
const String createAcc = 'Create Account';
const String premiumTitle = 'Start Using Notely with Premium Benefits';
const String checkedText1 = 'Save unlimited notes to a single project';
const String checkedText2 = 'Create unlimited projects and teams';
const String checkedText3 = 'Daily backups to keep your data safe';
const String annual = 'Annual';
const String monthly = 'Monthly';
const String year = 'per year';
const String month = 'per month';
const String monthlySub = '\$7.99';
const String annualSub = '\$79.99';
const String subscribe = 'SUBSCRIBE';
const String restorePurchase = 'Restore Purchase';
const String premiumBenefits = 'Start Using Notely with Premium Benefits';
const String allNotes = 'All Notes';
const String allNotesTitle = 'Create Your First Note';
const String allNotesDesc =
    'Add a note about anything (your thoughts on climate change, or your history essay) and share it witht the world.';
const String createNote = 'Create A Note';
const String importNotes = 'Import Notes';
const String recentNotes = 'Recent Notes';
const String editNotes = 'Edit Note';
const String buyPremium = 'Buy Premium';
const String editProfile = 'Edit Profile';
const String appTheme = 'App Theme';
const String notification = 'Notifications';
const String security = 'Security';
const String logout = 'Logout';

class AppDimens {
  static const double defaultPadding = 16.0;
}

class FontConstant {
  static const String fontFamily = "Nunito";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class FontSize {
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s17 = 17.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
}

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color);
}

//regular text style
TextStyle getRegularStyle(
    {required double fontSize,
    required Color color,
    required FontWeight fontWeight}) {
  return _getTextStyle(fontSize, FontConstant.fontFamily, fontWeight, color);
}

//light text style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.light, color);
}

//bold text style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.bold, color);
}

// semi bold text style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.semiBold, color);
}

//medium text style
TextStyle getMediumStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.medium, color);
}
