import 'package:flutter/material.dart';

final ThemeData OwnThemeData = new ThemeData(
    brightness: Brightness.light,
    primaryColor: OwnColors.color2[500],
    primaryColorBrightness: Brightness.light,
    accentColor: OwnColors.color2[500],
    accentColorBrightness: Brightness.light,
    textSelectionColor: OwnColors.color2[300],
    appBarTheme: AppBarTheme(color: OwnColors.color2[500]),
    scaffoldBackgroundColor: OwnColors.color2[50],
    // primaryTextTheme:
    //     TextTheme(title: TextStyle(color: OwnColors.color2[500]))
);

class OwnColors {
  OwnColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> color2 = const <int, Color>{
     50: const Color(0xFFFFFFFF),
    100: const Color(0xFFe8e8e8),//Disabled
    200: const Color(0xFF8b8b98),//Gray
    300: const Color(0xFFfdfcff),
    400: const Color(0xFFe2dddd),
    500: const Color(0xFF51b0aa),//Primary_Color
    600: const Color(0xFFebb776),//Secondary_Color
    700: const Color(0xFF173A5A),//Other_Color
    800: const Color(0xFFBC6C25),
    900: const Color(0xFF3784fc)//HyperLink
  };





  static customDialogNormal(String lang) {
    return TextStyle(
        fontSize: 15.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEn");
  }

  static btnBlack(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static btnWhite(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static welcomeBlack(String lang) {
    return TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEn");
  }

  static titleBlack(String? lang) {
    return TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static titleBlackBig(String? lang) {
    return TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static titleWhiteBig(String lang) {
    return TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }


  static titleColor(String? lang) {
    return TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static titlePromotion(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: Colors.black,
        decoration: TextDecoration.lineThrough,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static titleColor2(String lang) {
    return TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static buttonCaption(String lang) {
    return TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  //---------------------------------//

  static smallBlack(String? lang) {
    return TextStyle(
        fontSize: 10.0,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static smallBlackBold(String? lang) {
    return TextStyle(
        fontSize: 10.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static planNameBlackBold(String? lang) {
    return TextStyle(
        fontSize: 11.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static smallBlackMedium(String lang) {
    return TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static smallWhite(String? lang) {
    return TextStyle(
        fontSize: 10.0,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static smallWhileBold(String? lang) {
    return TextStyle(
        fontSize: 10.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }
  static planNameWhiteBold(String? lang) {
    return TextStyle(
        fontSize: 11.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static small2WhileBold(String lang) {
    return TextStyle(
        fontSize: 12.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static smallColor(String lang) {
    return TextStyle(
        fontSize: 10.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static smallColorBold(String lang) {
    return TextStyle(
        fontSize: 10.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }
  static planNameColorBold(String lang) {
    return TextStyle(
        fontSize: 11.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }


  static smallColor2(String? lang) {
    return TextStyle(
        fontSize: 10.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }
  static smallColor2Bold(String lang) {
    return TextStyle(
        fontSize: 12.0,
        color: color2[800],
        fontWeight: FontWeight.w600,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  //---------------------------------------//
  static normaMenuBold(String lang) {
    return TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalBlack(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalGrey(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[100],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalGreyBold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[100],
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalBlackBold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalBlackBoldUnderLine(String? lang) {
    return TextStyle(
      decoration: TextDecoration.underline,
        fontSize: 13.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }


  static normalBlackMedium(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalBlackBoldMenu(String? lang) {
    return TextStyle(
        fontSize: 11.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static paragraphNormalBlackMedium(String lang) {
    return TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        height: 2,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static paragraphNormalBlackMediumBold(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        height: 2,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static paragraphSmallBlack(String? lang) {
    return TextStyle(
        fontSize: 15.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        height: 2,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static paragraphNormalWhiteMedium(String lang) {
    return TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        height: 1.7,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalWhite(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalWhiteBold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: OwnColors.color2[50],
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalColor(String lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalColorBold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[500],
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static suitableColor(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableColorBold(String lang) {
    return TextStyle(
        fontSize: 16.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalColor2(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[800],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalColor2Bold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[800],
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static suitableColor2(String lang) {
    return TextStyle(
        fontSize: 15.0,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableColor2Bold(String? lang) {
    return TextStyle(
        fontSize: 15.0,
        color: color2[800],
        fontWeight: FontWeight.w500,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  //*------------------------------------*//

  static bigBlack(String? lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static bigBlackLight(String? lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static bigBlackBold(String? lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }


  static bigBlackMedium(String lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static bigWhite(String? lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static bigWhiteBold(String lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static hugeWhite(String? lang) {
    return TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }


  static suitableWhiteBold(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static suitableWhite(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableBlackBold(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static suitableBlack(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableGray(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: OwnColors.color2[200],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableGrayBold(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: OwnColors.color2[200],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static smallGray(String? lang) {
    return TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: OwnColors.color2[200],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static smallGrayBold(String? lang) {
    return TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: OwnColors.color2[200],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalGray(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.w500,
        color: OwnColors.color2[200],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static normalGrayBold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.w500,
        color: OwnColors.color2[200],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static normalHyperLink(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[900],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }
  static normalHyperLinkBold(String? lang) {
    return TextStyle(
        fontSize: 13.0,
        color: color2[900],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static suitableHyperLink(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        color: color2[900],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }
  static suitableHyperLinkBold(String? lang) {
    return TextStyle(
        fontSize: 16.0,
        color: color2[900],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }


  static bigColor(String lang) {
    return TextStyle(
        fontSize: 18.0,
        // fontWeight: FontWeight.w600,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static bigColorBold(String? lang) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static hugeColorBold(String? lang) {
    return TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static hugeColor2Bold(String? lang) {
    return TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: color2[800],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static bigColor2(String lang) {
    return TextStyle(
        fontSize: 18.0,
        // fontWeight: FontWeight.w600,
        color: color2[500],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static bigColor2Bold(String? lang) {
    return TextStyle(
        fontSize: 18.0,
        // fontWeight: FontWeight.w600,
        color: color2[800],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

  static paragraphNormalColor2(String? lang) {
    return TextStyle(
        fontSize: 12.0,
        color: color2[700],
        height: 1.5,
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableOtherColor(String lang) {
    return TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: color2[700],
        fontFamily: lang == "ar" ? "fontAr" : "fontEn");
  }

  static suitableOtherColorBold(String? lang) {
    return TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: color2[700],
        fontFamily: lang == "ar" ? "fontArBold" : "fontEnBold");
  }

}
