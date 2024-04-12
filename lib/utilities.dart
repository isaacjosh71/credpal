
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//global textstyle
TextStyle appstyle(double size, Color color, FontWeight fw) {
  return TextStyle(fontSize: size.sp, color: color, fontWeight: fw, fontFamily: 'Axiforma');
}


//global colors
const kDark = Color(0xFF000000);
const kLight = Color(0xFFFFFFFF);
const kDarkText = Color(0xFF222440);
const kGrey = Color(0xFFA5B6FB);
const kGreyLight = Color(0xFFF1F3FE);