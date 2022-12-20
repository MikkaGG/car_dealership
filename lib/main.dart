import 'package:flutter/material.dart';
import 'package:car/kia_sportage.dart';
import 'package:car/kia_stinger.dart';
import 'package:car/kia_picanto.dart';
import 'package:car/shopping_cart.dart';
import 'package:car/info_sportage.dart';
import 'package:car/info_stinger.dart';
import 'package:car/info_picanto.dart';
import 'package:car/account.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => KiaSportage(),
    '/stinger': (context) => KiaStinger(),
    '/picanto': (context) => KiaPicanto(),
    '/shopcart': (context) => ShopCart(),
    '/infSportage': (context) => InfSportage(),
    '/infStinger':(context) => InfStinger(),
    '/infPicanto':(context) => InfPicanto(),
    '/acc': (context) => Acc(),
  },
));

