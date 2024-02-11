import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/mobile/mobile_screen_layout.dart';
import 'package:whatsapp_ui/Screens/website/web_screen_layout.dart';
import 'package:whatsapp_ui/color.dart';
import 'package:whatsapp_ui/responsive/responsive_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp ui',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
