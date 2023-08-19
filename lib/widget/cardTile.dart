import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cardData.dart';

class CardTile extends StatelessWidget {
  final String cardName;
  // final String cardHolder;
  final String cvv;
  final String cardNo;
  final String expr;
  final int index;

  const CardTile(
      {super.key,
      required this.cardName,
      required this.cvv,
      required this.cardNo,
      required this.expr,
      required this.index
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(cardName,style: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),),
        subtitle: Text(cardNo + cvv + expr),
        trailing: InkWell(
            child: Icon(Icons.copy),
          onTap: (){
            Provider.of<CardData>(context).copy();
          },

        )
    );
  }
}
