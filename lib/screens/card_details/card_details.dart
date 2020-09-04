import 'package:english_kidz/widgets/image_answer_card/image_answer_card.dart';
import 'package:english_kidz/widgets/image_card/index.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CardDetailsScreen extends StatefulWidget {
  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.0, 1.0],
                  colors: [
                    Color.fromRGBO(238, 174, 202, 100),
                    Color.fromRGBO(148, 187, 233, 100),
                  ],
                )),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Aşağıdaki resmin ingilizce karşılığını tahmin et ve resmin üzerine dokun',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(160, 92, 147, 1.0)),
                      textAlign: TextAlign.center,
                    ),
                    FlipCard(
                      back: ImageAnswerCard(),
                      front: ImageCard(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
