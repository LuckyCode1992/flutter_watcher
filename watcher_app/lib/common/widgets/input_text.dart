

import 'package:flutter/material.dart';
import 'package:watcherapp/common/utils/screen.dart';
import 'package:watcherapp/common/values/app_colors.dart';
import 'package:watcherapp/common/values/app_fonts.dart';
import 'package:watcherapp/common/values/radii.dart';

Widget buildInputTextWidget(
    {double margin,
      double height,
      String hintString,
      double fontSize,
      bool isObscureText,
      TextEditingController textEditingController}) {
  return Container(
    margin: EdgeInsets.only(top: dvSetHeight(margin)),
    height: dvSetHeight(height),
    decoration: BoxDecoration(
        color: AppColors.secondaryElement, borderRadius: Radii.k6pxRadius),
    child: TextField(
      decoration: InputDecoration(
        hintText: hintString,
        contentPadding:
        EdgeInsets.only(left: 20, top: 10, right: 0, bottom: 9),
        border: InputBorder.none,
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: AppFonts.Avenir,
        fontWeight: FontWeight.w400,
        fontSize: dvSetFontSize(fontSize),
      ),
      maxLines: 1,
      autocorrect: false,
      // 自动纠错
      obscureText: isObscureText,
      // 显示 *
      controller: textEditingController,
    ),
  );
}