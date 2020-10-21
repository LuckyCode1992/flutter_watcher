import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:watcherapp/common/utils/app_utils.dart';
import 'package:watcherapp/common/values/app_values.dart';


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget buildHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: dvSetHeight(65)),
      child: Text(
        'features',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: AppFonts.Montserrat,
          fontWeight: FontWeight.w600,
          fontSize: dvSetFontSize(24),
        ),
      ),
    );
  }

  Widget buildHeadDetail() {
    return Text('data');
  }

  Widget buildFeatureItem() {
    return Text('data');
  }

  Widget buildButton() {
    return Text('data');
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 34, allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            buildHeadTitle(),
            buildHeadDetail(),
            buildFeatureItem(),
            buildButton(),
          ],
        ),
      ),
    );
  }
}
