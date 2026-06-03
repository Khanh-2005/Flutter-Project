import 'package:flutter/material.dart';
import 'package:flutter_helloapp/pages/login_page.dart';
import 'package:flutter_helloapp/pages/onboarding_page.dart';
import 'package:flutter_helloapp/pages/root_app.dart';
import 'package:flutter_helloapp/pages/signup_page.dart';
import 'package:flutter_helloapp/pages/splash_page.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';

  static Map<String, WidgetBuilder> get routes => {
    splash: (context) => const SplashPage(),
    onboarding: (context) => const OnboardingPage(),
    login: (context) => const LoginPage(),
    signup: (context) => const SignupPage(),
    home: (context) => RootApp(),
  };
}
