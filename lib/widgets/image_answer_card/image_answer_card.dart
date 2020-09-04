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
                'https://media-exp1.licdn.com/dms/image/C4D03AQHFZR4LkCj31w/profile-displayphoto-shrink_200_200/0?e=1603324800&v=beta&t=0amJElTfruhb6aQE6x6lwq3wmNuOsmiIVZuu-LTVlVw'),
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
              'ALPERRRRR',
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
