import 'package:addcard/model/cardData.dart';
import 'package:addcard/screen/addCardScreen.dart';
import 'package:addcard/screen/cardsScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { return CardData(); },
      child: MaterialApp(
        home: CardsScreen(),
      ),
    );
  }
}
