import 'package:flutter/material.dart';

class Styles {
  static const Color defaultGrey = Color(0xFFE0E0E0);
  static const Color defaultBlack = Color(0xFF000000);


  static const TextStyle defaultTextStyle = TextStyle(
    color: defaultBlack,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: 'Proxima Nova',
  );
  static TextStyle smallTextWhite = defaultTextStyle.copyWith(fontSize: 12, color: Color(0xFFDAE7CA));
  static TextStyle smallText = defaultTextStyle.copyWith(fontSize: 12);


  static const TextStyle defaultTitleTextStyle = TextStyle(
    color: defaultBlack,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Proxima Nova',
  );
  static TextStyle defaultTitleWhite = defaultTitleTextStyle.copyWith(color: Colors.white);

  static const TextStyle defaultSubtitleTextStyle = TextStyle(
    color: defaultBlack,
    fontSize: 20,
  );

  static TextStyle defaultSubtitleWhite = defaultSubtitleTextStyle.copyWith(color: Colors.white);

  static const TextStyle defaultBodyTextStyle = TextStyle(
    color: defaultBlack,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
}