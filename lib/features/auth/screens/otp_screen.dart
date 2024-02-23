import 'package:flutter/material.dart';
import 'package:whatsapp_ui/color.dart';

class OTPScreen extends StatefulWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  //* verfication id is the id that firebase send to us for a vefication

  const OTPScreen({super.key, required this.verificationId});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifying your phone number'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('we have send an sms with a code'),
            SizedBox(
              width: size.width * 0.5,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '- - - - - -',
                  hintStyle: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
