import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_app/Views/Auth/Widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String loginRoute = 'login';
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    // var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: BuildAppBar(context, w, title: 'تسجيل الدخول'),
      body: const LoginScreenBody(),
    );
  }
}
