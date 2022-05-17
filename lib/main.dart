import 'package:flutter/material.dart';
import 'package:foodie/page/login_page.dart';
import 'package:foodie/page/root_app.dart';
import 'router.dart' as router;
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: router.generateRoute,
    home: LoginPage(),
  ));
}

