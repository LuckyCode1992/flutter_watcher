import 'package:flutter/material.dart';
import 'package:watcherapp/common/utils/app_utils.dart';
import 'package:watcherapp/common/values/app_colors.dart';
import 'package:watcherapp/common/values/app_fonts.dart';
import 'package:watcherapp/common/values/radii.dart';
import 'package:watcherapp/common/widgets/input_text.dart';
import 'package:watcherapp/common/widgets/toast.dart';
import 'package:watcherapp/routes.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  // 登陆操作
  void handlerSignIn() async {
    if (!duIsEmail(_emailController.value.text)) {
      toastInfo(msg: '请输入正确的邮件');
      return;
    }
    if (!duCheckStringLength(_passController.value.text, 6)) {
      toastInfo(msg: '密码不能小于6位');
      return;
    }
  }

  void handleSignUp(){
    Navigator.pushNamed(context, AppRoutes.SIGN_UP);
  }

  Widget buildThirdLogin() {
    return Container(
      margin: EdgeInsets.only(top: dvSetHeight(20)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: dvSetHeight(44),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 230, 230, 231),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: Radii.k6pxRadius,
                ),
                child: Image.asset("assets/images/icons-twitter.png"),
              ),
            ),
            flex: 1,
          ),
          Container(
            width: dvSetWidth(20),
          ),
          Expanded(
            child: Container(
              height: dvSetHeight(44),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 230, 230, 231),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: Radii.k6pxRadius,
                ),
                child: Image.asset("assets/images/icons-google.png"),
              ),
            ),
            flex: 1,
          ),
          Container(
            width: dvSetWidth(20),
          ),
          Expanded(
            child: Container(
              height: dvSetHeight(44),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 230, 230, 231),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: Radii.k6pxRadius,
                ),
                child: Image.asset("assets/images/icons-facebook.png"),
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }

  Widget buildText2() {
    return Container(
      child: Text(
        'Or sign in with social networks',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: AppFonts.Avenir,
          fontWeight: FontWeight.w400,
          fontSize: dvSetFontSize(16),
        ),
      ),
    );
  }

  Widget buildText() {
    return Container(
      child: FlatButton(
        onPressed: () {},
        child: Text(
          'Forgot password?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.secondaryElementText,
            fontFamily: AppFonts.Avenir,
            fontWeight: FontWeight.w400,
            fontSize: dvSetFontSize(16),
            height: 1, // 设置下行高，否则字体下沉
          ),
        ),
      ),
    );
  }

  Widget buildSign_in_up_button() {
    return Container(
      margin: EdgeInsets.only(top: dvSetHeight(10)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: buildButtonWidget(
              color: AppColors.thirdElement,
              title: "Sign up",
              textColor: AppColors.primaryElementText,
              function: handleSignUp,
            ),
            flex: 10,
          ),
          Container(
            width: 20,
            height: 1,
          ),
          Expanded(
            child: buildButtonWidget(
              color: AppColors.primaryElement,
              title: "Sign in",
              textColor: AppColors.primaryElementText,
              function: handlerSignIn,
            ),
            flex: 10,
          )
        ],
      ),
    );
  }

  Widget buildButtonWidget(
      {Color color, String title, Color textColor, Function() function}) {
    return Container(
      height: dvSetHeight(44),
      child: FlatButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: Radii.k6pxRadius,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: dvSetFontSize(18),
            fontFamily: AppFonts.Montserrat,
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
        onPressed: function,
      ),
    );
  }

  Widget buildInput(TextEditingController emailController,
      TextEditingController passController) {
    return Container(
      margin: EdgeInsets.only(top: dvSetHeight(49)),
      child: Column(
        children: <Widget>[
          buildInputTextWidget(
            margin: 0,
            height: 44,
            hintString: "Email",
            fontSize: 18,
            isObscureText: false,
            textEditingController: emailController,
          ),
          buildInputTextWidget(
              margin: 10,
              height: 44,
              hintString: "Password",
              fontSize: 18,
              isObscureText: true,
              textEditingController: passController),
        ],
      ),
    );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // 软键盘 弹起 不改变 界面，如果为true 则会改变
      body: Container(
        margin: EdgeInsets.only(left: dvSetWidth(30), right: dvSetWidth(30)),
        child: Column(
          children: <Widget>[
            buildLogo(),
            buildInput(_emailController, _passController),
            buildSign_in_up_button(),
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
                color: AppColors.thirdElement,
                onPressed: handleSignUp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
