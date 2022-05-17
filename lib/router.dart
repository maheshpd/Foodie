

import 'package:flutter/material.dart';
import 'package:foodie/page/root_app.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch(setting.name){
    case '/root_app':
      return MaterialPageRoute(builder: (context) => const RootApp());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(
        body: Center(),
      ));
  }
}