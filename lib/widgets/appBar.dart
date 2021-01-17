import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Cricketer'),
            automaticallyImplyLeading: false,
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.sports_cricket),
            title: Text(
              'Select match type',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              print('Pressed');
            },
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Match Settings',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              print('pressed');
            },
          ),
          Divider(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Select Match Types',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              print('pressed');
            },
          ),
        ],
      ),
    );
  }
}
