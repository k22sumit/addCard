import 'package:addcard/model/cardData.dart';
import 'package:addcard/widget/cardTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardData>(
      builder: (context, cardData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final card = cardData.cards[index];
            return CardTile(
              cardName: card.cardName,
              cardNo: card.cardNo,
              cvv: card.cvv,
             expr: card.expr,
              index: index,);

          },
          itemCount: cardData.taskCount,
        );
      },
    );
  }
}