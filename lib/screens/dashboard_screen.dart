import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter/gestures.dart';

// import '../widgets/bottomNavigationBar.dart';
import '../widgets/appBar.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = './dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: AppDrawer(),
      // bottomNavigationBar: BottonNavigationBar(),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     title: new Text('Home'),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     title: new Text('Home'),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     title: new Text('Home'),
      //   ),
      // ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BottomNavigationBar(),
            ConstrainedBox(
              constraints: const BoxConstraints(),
            ),
            // ListView.builder(itemBuilder: , itemCount: ,)
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.sports_cricket),
                    title: Text(
                      'Select match type',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Match settings',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text(
                      'Match summary',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(
                      'Profile settings',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
