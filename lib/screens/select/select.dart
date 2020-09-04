import 'package:english_kidz/screens/home/home.dart';
import 'package:english_kidz/screens/login/index.dart';
import 'package:english_kidz/widgets/button/button.dart';
import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;

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
            )),
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: devicePadding.top + 50.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints.expand(
                        height: Theme.of(context).textTheme.headline4.fontSize *
                                1.1 +
                            400.0,
                      ),
                      // padding: EdgeInsets.fromLTRB(30.00, 30.00, 30.00, 30.00),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(30.00),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(99.0),
                              child: Image.network(
                                'https://images.pexels.com/photos/2917442/pexels-photo-2917442.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
                                width: 180.0,
                                height: 180.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Container(
                                child: Column(
                              children: <Widget>[
                                Text(
                                    'Seviyeni belirle ve Ingilizce öğrenmeye başla',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color:
                                            Color.fromRGBO(160, 92, 147, 1.0))),
                              ],
                            )),
                            Spacer(
                              flex: 1,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  SigninButton(
                                    child: Text('Yeni başlayanlar için , temel',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                      );
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  SigninButton(
                                    child: Text(
                                        'Yetkinler için , seviyeni tespit et',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()));
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
