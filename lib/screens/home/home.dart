import 'package:carousel_slider/carousel_slider.dart';
import 'package:english_kidz/screens/card_details/card_details.dart';
import 'package:english_kidz/screens/select/index.dart';
import 'package:english_kidz/widgets/drawer-item/drawer_item.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Colors.pink[100],
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState.openEndDrawer();
              },
              icon: Icon(Icons.settings),
            )
          ],
        ),
      ),
      endDrawer: ClipPath(
        clipper: _DrawerClipper(),
        child: Drawer(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  DrawerItem(text: "Profil", onPressed: () {}),
                  DrawerItem(text: "Tüm Desteler", onPressed: () {}),
                  DrawerItem(text: "Yeni deste oluştur", onPressed: () {}),
                  DrawerItem(text: "Dil seçimi", onPressed: () {}),
                  DrawerItem(text: "Bildirimler", onPressed: () {}),
                  DrawerItem(text: "Market", onPressed: () {}),
                  DrawerItem(text: "Hakkında", onPressed: () {}),
                  DrawerItem(text: "Bize ulaşın", onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
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
                ),
              ),
            )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Başarıyla tamamladığın desteler',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(160, 92, 147, 1.0)),
                        ),
                        new CircularPercentIndicator(
                          radius: 125.0,
                          lineWidth: 15.0,
                          percent: 0.30,
                          center: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(
                              //   Icons.book,
                              //   color: Colors.green,
                              //   size: 19.0,
                              // ),
                              Text("4",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800,
                                      color:
                                          Color.fromRGBO(160, 92, 147, 1.0))),
                            ],
                          ),
                          progressColor: Color.fromRGBO(160, 92, 147, 0.9),
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(126, 179, 255, 0.2),
                        border: Border(
                            top: BorderSide(color: Colors.white, width: 2.0),
                            left: BorderSide(color: Colors.white, width: 2.0),
                            right:
                                BorderSide(color: Colors.white, width: 2.0))),
                    height: MediaQuery.of(context).size.height * 0.45,
                    padding: EdgeInsets.only(
                      left: 0.0,
                      right: 0.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Başka Desteleri Görmek İçin Sola Kaydır',
                          style: TextStyle(
                              color: Color.fromRGBO(3, 81, 193, 0.7),
                              fontWeight: FontWeight.w800),
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 220, enlargeCenterPage: true),
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return InkWell(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 13.0, vertical: 5.0),
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            spreadRadius: 1.5,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ]),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              child: Column(
                                                children: <Widget>[
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10.0),
                                                      topRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                    child: Image.network(
                                                      'https://images.pexels.com/photos/2917442/pexels-photo-2917442.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.20,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                        width:
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width,
                                                        decoration:
                                                            BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          10.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          10.0),
                                                                )),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Text(
                                                              'Eşyalar',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black54,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                            // child: Text('text $i',
                                            //     style:
                                            //         TextStyle(fontSize: 16.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CardDetailsScreen()),
                                    );
                                  },
                                );
                              },
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(50, 0);
    path.quadraticBezierTo(0, size.height / 2, 50, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
