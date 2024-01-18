import 'package:flutter/material.dart';
import 'package:testappp/Screens/balance_screen.dart';
import 'package:testappp/Screens/gifts_screen.dart';
import 'package:testappp/Screens/promos_screen.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "home",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        'home': (context) => const HomeScreen(),
        'balance':(context) => const BalanceScreen(),
        'promos':(context) => const PromosScreen(),
        'gifts':(context) => GiftsScreen(),
      },
    );
  }
}


