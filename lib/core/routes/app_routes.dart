import 'package:flutter/material.dart';
import 'package:safe_wave/feature/auth/presentation/screens/forget_password_screen.dart';
import 'package:safe_wave/feature/auth/presentation/screens/login_screen.dart';
import 'package:safe_wave/feature/auth/presentation/screens/navigate_splash_screen.dart';
import 'package:safe_wave/feature/auth/presentation/screens/sign_up_screen.dart';

import '../../feature/home/presentation/screens/home_screen.dart';



class Routes {
  static const String intitlRoute = '/';

  static const String home = '/home';
  static const String splashScreen = '/splashScreen';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String forgetPassword = '/forgetPassword';

}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.intitlRoute:
        return MaterialPageRoute(builder: (_) =>  const NavigateSplashScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) =>  const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) =>  const SignUpScreen());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) =>  const ForgetPasswordScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) =>   const HomeScreen());


      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Not Found..!'),
            ),
          ),
        );
    }
  }
}
