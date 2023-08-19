import 'package:flutter/material.dart';
import 'package:pattern_formatter/numeric_formatter.dart';
import 'package:provider/provider.dart';
import '../model/cardData.dart';

class AddCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController ctcardNumber = TextEditingController();
    TextEditingController ctcardName = TextEditingController();
    TextEditingController ctcardexpr = TextEditingController();
    TextEditingController ctcardcvv = TextEditingController();


    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: ctcardName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Card Name",
                  labelText: "Enter Card Name",
                ),
                autofocus: true,
                textAlign: TextAlign.center,

              ),
              TextField(
                controller: ctcardNumber,

                decoration: InputDecoration(
                  hintText: "Card Number",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [CreditCardFormatter()],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ctcardexpr,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "MMYY",
                      ),
                      autofocus: true,
                      textAlign: TextAlign.center,

                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: ctcardcvv,

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "CVV",
                      ),
                      autofocus: true,
                      textAlign: TextAlign.center,

                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent,)
                    ),
                    onPressed: () {
                      // Use your TaskData provider to add the task
                      Provider.of<CardData>(context, listen: false)
                          .addCard(ctcardName.text,ctcardNumber.text,ctcardexpr.text,ctcardcvv.text);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
