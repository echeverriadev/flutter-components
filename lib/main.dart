import 'package:flutter/material.dart';

import 'package:components_fluter/src/routes/routes.dart';

import 'package:components_fluter/src/pages/alert_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, // para quitar el liston rojo de debug
      
      initialRoute: '/',
      routes: getApplicationRoute(),
      onGenerateRoute: (settings) =>  MaterialPageRoute(builder: (BuildContext context) => AlertPage())

    );
  }
}