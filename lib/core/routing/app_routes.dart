import 'package:flutter/material.dart';
import 'package:skin_cancer_app/features/Auth/screens/forget_password_screen.dart';
import 'package:skin_cancer_app/features/Auth/screens/otp_code_screen.dart';
import 'package:skin_cancer_app/features/Auth/screens/rest_password_screen.dart';
import 'package:skin_cancer_app/features/Auth/screens/sign_in_screen.dart';
import 'package:skin_cancer_app/features/home/home_screen.dart';
import 'package:skin_cancer_app/features/onBoarding/screens/chose_auth_fun_screen.dart';
import 'package:skin_cancer_app/features/onBoarding/screens/chose_user.dart';
import 'package:skin_cancer_app/features/onBoarding/screens/on_boarding_screen.dart';
import 'package:skin_cancer_app/features/splash/splash_screen.dart';

import '../../features/Auth/sign_up/sign_up_screen.dart';
import '../../features/bottom_nav/gnav_bar.dart';
import '../../features/home/cancer_types/cancer_info_screen.dart';

class Routes {
  static const String initialRoutes = "/";
  static const String onBoardingRoutes = "/OnBoardingScreen";
  static const String choseUserRoutes = "/ChoseUser";
  static const String choseAuthFunScreenRoutes = "/ChoseAuthFunScreen";
  static const String singInScreenRoutes = "/SingInScreen";
  static const String singUpScreenRoutes = "/SingUpScreen";
  static const String forgetPasswordScreenRoutes = "/ForgetPasswordScreen";
  static const String oTPCodeScreenRoutes = "/OTPCodeScreen";
  static const String restPasswordScreenRoutes = "/RestPasswordScreen";
  static const String homeScreen = "/HomeScreen";
  static const String gnavBar = "/GnavBar";
  static const String cancerInfoScreen = "/CancerInfoScreen";
}

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoutes:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingRoutes:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.choseUserRoutes:
        return MaterialPageRoute(
          builder: (_) => const ChoseUser(),
        );
      case Routes.choseAuthFunScreenRoutes:
        return MaterialPageRoute(
          builder: (_) => const ChoseAuthFunScreen(),
        );
      case Routes.singInScreenRoutes:
        return MaterialPageRoute(
          builder: (_) => const SingInScreen(),
        );
      case Routes.forgetPasswordScreenRoutes:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );
      case Routes.oTPCodeScreenRoutes:
        return MaterialPageRoute(
          builder: (_) => OTPCodeScreen(),
        );
      case Routes.restPasswordScreenRoutes:
        return MaterialPageRoute(
          builder: (_) => RestPasswordScreen(),
        );
      case Routes.singUpScreenRoutes:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.gnavBar:
        return MaterialPageRoute(
          builder: (_) => const MyGnavBar(),
        );
      case Routes.cancerInfoScreen:
        return MaterialPageRoute(
          builder: (context) => const CancerInfoScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
