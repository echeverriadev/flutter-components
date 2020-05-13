import 'package:flutter/material.dart';

import 'package:components_fluter/src/pages/home_page.dart';
import 'package:components_fluter/src/pages/alert_page.dart';
import 'package:components_fluter/src/pages/avatar_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, // para quitar el liston rojo de debug
      
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/'            : (context ) => HomePage(),
        'alert'       : (context ) => AlertPage(),
        'avatar'      : (context ) => AvatarPage(),

      },

    );
  }
}