import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widget/error.dart';
import 'package:whatsapp_ui/features/auth/screens/login_screen.dart';
import 'package:whatsapp_ui/features/auth/screens/otp_screen.dart';

Route<dynamic>? generateRoute(RouteSettings setting) {
  switch (setting.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    case OTPScreen.routeName:
      final verificationId = setting.arguments.toString();
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
          // we are taking verification id that we are taking from argument
        ),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'error has been occurerd '),
        ),
      );
  }
}
