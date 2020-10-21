
import 'package:flutter_screenutil/flutter_screenutil.dart';

//设置宽度
double dvSetWidth(double width) {
  return ScreenUtil().setWidth(width);
}

// 设置高度
double dvSetHeight(double height) {
  return ScreenUtil().setHeight(height);
}

// 设置字体尺寸
double dvSetFontSize(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}
