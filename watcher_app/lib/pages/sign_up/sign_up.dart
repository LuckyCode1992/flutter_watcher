import 'package:flutter/material.dart';
import 'package:watcherapp/common/utils/app_utils.dart';
import 'package:watcherapp/common/values/app_colors.dart';
import 'package:watcherapp/common/values/app_fonts.dart';
import 'package:watcherapp/common/values/radii.dart';
import 'package:watcherapp/common/widgets/input_text.dart';
import 'package:watcherapp/common/widgets/toast.dart';
import 'package:watcherapp/routes.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void handleSignUp() {
    if (!duIsEmail(emailController.value.text)) {
      toastInfo(msg: "请输入正确邮箱");
      return;
    }
    if (!duCheckStringLength(nameController.value.text, 5)) {
      toastInfo(msg: "请输入5位以上用户名");
      return;
    }
    if (!duCheckStringLength(passController.value.text, 6)) {
      toastInfo(msg: "请输入6位以上密码");
      return;
    }
    Navigator.pushNamed(context, AppRoutes.SIGN_IN);
  }

  void handleHaveAccount() {
    Navigator.pushNamed(context, AppRoutes.SIGN_IN);
  }

  Widget buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: dvSetHeight(50)),
      child: Text(
        'Sign UP',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontSize: dvSetFontSize(24),
            fontWeight: FontWeight.w600,
            fontFamily: AppFonts.Montserrat,
            height: 1),
      ),
    );
  }

  Widget buildInputForm() {
    return Container(
      margin: EdgeInsets.only(
        top: dvSetHeight(40),
        left: dvSetWidth(30),
        right: dvSetWidth(30),
      ),
      child: Column(
        children: <Widget>[
          buildInputTextWidget(
            margin: 0,
            height: 44,
            hintString: "Full name",
            fontSize: 18,
            isObscureText: false,
            textEditingController: nameController,
          ),
          buildInputTextWidget(
            margin: 10,
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
            textEditingController: passController,
          ),
          Container(
            height: dvSetHeight(44),
            width: double.infinity,
            margin: EdgeInsets.only(top: dvSetHeight(15)),
            child: FlatButton(
              onPressed: handleSignUp,
              color: AppColors.primaryElement,
              shape: RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
              child: Text(
                'Create an account',
                style: TextStyle(
                  color: AppColors.primaryElementText,
                  fontFamily: AppFonts.Montserrat,
                  fontWeight: FontWeight.w400,
                  fontSize: dvSetFontSize(18),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: dvSetHeight(15),
              left: dvSetWidth(10),
              right: dvSetWidth(10),
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'By signing up you agree to our Times',
                  style: TextStyle(color: AppColors.primaryText),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Times',
                      style: TextStyle(color: AppColors.secondaryElementText),
                    ),
                    TextSpan(
                      text: 'and',
                      style: TextStyle(color: AppColors.primaryText),
                    ),
                    TextSpan(
                      text: 'Conditions of Use',
                      style: TextStyle(color: AppColors.secondaryElementText),
                    ),
                  ]),
            ),
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

  Widget buildThirdLogin() {
    return Container(
      margin: EdgeInsets.only(
        top: dvSetHeight(20),
        left: dvSetWidth(30),
        right: dvSetWidth(30),
      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primaryText,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            color: AppColors.primaryText,
            onPressed: () {
              toastInfo(msg: '这是 注册界面');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // logo
            buildLogo(),
            // 输入框
            buildInputForm(),
            Spacer(),
            // 三方登陆
            buildText2(),
            buildThirdLogin(),
            // 有账号按钮
            Spacer(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                left: dvSetWidth(30),
                right: dvSetWidth(30),
                top: dvSetHeight(20),
              ),
              child: RaisedButton(
                child: Text(
                  'I have an account',
                  style: TextStyle(color: AppColors.primaryElementText),
                ),
                color: AppColors.thirdElement,
                onPressed: handleHaveAccount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
