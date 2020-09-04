import 'package:english_kidz/screens/card_details/index.dart';
import 'package:english_kidz/screens/login/index.dart';
import 'package:english_kidz/widgets/button/index.dart';
import 'package:flutter/material.dart';

class ImageAnswerCard extends StatefulWidget {
  @override
  _ImageAnswerCardState createState() => _ImageAnswerCardState();
}

class _ImageAnswerCardState extends State<ImageAnswerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.60,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/2363356/pexels-photo-2363356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            fit: BoxFit.cover),
      ),
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(color: Colors.white, width: 2.0)),
            child: Text(
              'Peach',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 54.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(
                  flex: 4,
                ),
                SigninButton(
                  child: Icon(Icons.check),
                  width: MediaQuery.of(context).size.width * 0.12,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
                Spacer(
                  flex: 1,
                ),
                SigninButton(
                  child: Icon(Icons.close),
                  width: MediaQuery.of(context).size.width * 0.12,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
