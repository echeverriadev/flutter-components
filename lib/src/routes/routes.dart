import 'package:flutter/material.dart';
import 'package:components_fluter/src/pages/home_page.dart';
import 'package:components_fluter/src/pages/avatar_page.dart';
import 'package:components_fluter/src/pages/alert_page.dart';
import 'package:components_fluter/src/pages/card_page.dart';


Map<String , WidgetBuilder> getApplicationRoute(){

  return <String, WidgetBuilder> {
    '/'      : (BuildContext context ) => HomePage(),
    'alert'  : (BuildContext context ) => AlertPage(),
    'avatar' : (BuildContext context ) => AvatarPage(),
    'card'   : (BuildContext context) => CardPage()
  };
}