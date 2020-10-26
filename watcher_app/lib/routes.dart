

import 'package:watcherapp/pages/sign_in/sign_in.dart';
import 'package:watcherapp/pages/sign_up/sign_up.dart';

class AppRoutes {
  static const String SIGN_IN = "/sign-in";
  static const String SIGN_UP = "/sign_up";
}

/// 静态路由
var staticRoutes = {
  AppRoutes.SIGN_IN: (context) => SignInPage(),
  AppRoutes.SIGN_UP: (context) => SignUpPage(),
};
