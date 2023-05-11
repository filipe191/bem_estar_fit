import 'package:bem_estar_fit/views/home_page.dart';
import 'package:bem_estar_fit/views/imc_page.dart';
import 'package:bem_estar_fit/views/menu_page.dart';
import 'package:bem_estar_fit/views/tip_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bem-Estar Fit',
      routes: {
        '/': (context) =>  const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/imc': (context) => const ImcPage(),
        '/tip': (context) => const TipPage(),
      },
    );
  }
}
