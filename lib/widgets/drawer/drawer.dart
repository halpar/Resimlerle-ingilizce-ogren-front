import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/2917442/pexels-photo-2917442.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                    fit: BoxFit.cover)),
            child: Text('Header'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
