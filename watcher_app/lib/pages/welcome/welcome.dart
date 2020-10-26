import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:watcherapp/common/utils/app_utils.dart';
import 'package:watcherapp/common/values/app_values.dart';
import 'package:watcherapp/routes.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget buildHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: dvSetHeight(60)),
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
    return Container(
      width: dvSetWidth(242),
      height: dvSetHeight(70),
      margin: EdgeInsets.only(top: dvSetHeight(14)),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: AppFonts.Avenir,
          fontWeight: FontWeight.normal,
          fontSize: dvSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  Widget buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: dvSetWidth(295),
      height: dvSetHeight(80),
      margin: EdgeInsets.only(top: dvSetHeight(marginTop)),
      child: Row(
        children: <Widget>[
          Container(
            width: dvSetWidth(80),
            height: dvSetHeight(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          Container(
            width: dvSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: AppFonts.Avenir,
                fontWeight: FontWeight.normal,
                fontSize: dvSetFontSize(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton() {
    return Container(
      width: dvSetWidth(295),
      height: dvSetHeight(44),
      margin: EdgeInsets.only(bottom: dvSetHeight(20)),
      child: FlatButton(
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        child: Text("Get started"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        onPressed: (){
          Navigator.pushNamed(context, AppRoutes.SIGN_IN);
        },
      ),
    );
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
            buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              86,
            ),
            buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            Spacer(),
            buildButton(),
          ],
        ),
      ),
    );
  }
}
