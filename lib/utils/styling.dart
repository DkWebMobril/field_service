import 'package:field_service/utils/colors.dart';
import 'package:flutter/material.dart';

class Font {
  var _textStyle = const TextStyle();

  TextStyle get s46 => _textStyle.copyWith(fontSize: 46);

  TextStyle get s40 => _textStyle.copyWith(fontSize: 40);

  TextStyle get s36 => _textStyle.copyWith(fontSize: 36);

  TextStyle get s26 => _textStyle.copyWith(fontSize: 26);

  TextStyle get s22 => _textStyle.copyWith(fontSize: 22);

  TextStyle get s20 => _textStyle.copyWith(fontSize: 20);

  TextStyle get s18 => _textStyle.copyWith(fontSize: 18);

  TextStyle get s16 => _textStyle.copyWith(fontSize: 16);
  TextStyle get s15 => _textStyle.copyWith(fontSize: 15);

  TextStyle get s14 => _textStyle.copyWith(fontSize: 14);

  TextStyle get s12 => _textStyle.copyWith(fontSize: 12);

  TextStyle get s11 => _textStyle.copyWith(fontSize: 11);

  TextStyle get s10 => _textStyle.copyWith(fontSize: 10);
}

class MyStyle extends Font {
  MyStyle.regular4([final Color? color]) {
    _textStyle = _textStyle.copyWith(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: color ?? MyTheme.black,
    );
  }
  MyStyle.thin3([final Color? color]) {
    _textStyle = _textStyle.copyWith(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
      color: color ?? MyTheme.black,
    );
  }

  MyStyle.medium5([final Color? color]) {
    _textStyle = _textStyle.copyWith(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      color: color ?? MyTheme.black,
    );
  }

  MyStyle.semiBold6([final Color? color]) {
    _textStyle = _textStyle.copyWith(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: color ?? MyTheme.black,
    );
  }
  MyStyle.semiBold7([final Color? color]) {
    _textStyle = _textStyle.copyWith(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      color: color ?? MyTheme.black,
    );
  }
  MyStyle.appbarTextStyle([final Color? color]) {
    _textStyle = _textStyle.copyWith(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: color ?? MyTheme.black,
    );
  }
 
}
  
