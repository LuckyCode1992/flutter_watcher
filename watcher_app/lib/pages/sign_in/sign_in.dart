import 'package:flutter/material.dart';
import 'package:watcherapp/common/utils/app_utils.dart';
import 'package:watcherapp/common/values/app_colors.dart';
import 'package:watcherapp/common/values/app_fonts.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          buildLogo(),
          buildInput(),
          buildButton(),
          buildText(),
          Spacer(),
          buildText2(),
          buildThirdLogin(),
          Spacer(),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                'Sign up',
                style: TextStyle(color: AppColors.primaryElementText),
              ),
              color: AppColors.secondaryElement,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildThirdLogin() {
  return Container();
}

Widget buildText2() {
  return Container();
}

Widget buildText() {
  return Container();
}

Widget buildButton() {
  return Container();
}

Widget buildInput() {
  return Container();
}

Widget buildLogo() {
  return Container(
    margin: EdgeInsets.only(top: dvSetHeight(40 + 44.0)),
    child: Center(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryBackground,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(38, 27, 27, 29),
                  offset: Offset(0, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: dvSetWidth(40),
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(
            height: dvSetHeight(5),
          ),
          Text(
            'SECTOR',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.Montserrat,
                fontSize: dvSetFontSize(24),
                height: 1),
          ),
          Text(
            'news',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: AppFonts.Avenir,
                fontWeight: FontWeight.w400,
                fontSize: dvSetFontSize(16),
                height: 1),
          ),
        ],
      ),
    ),
  );
}
