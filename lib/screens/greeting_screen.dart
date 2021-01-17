//package imports

import '../screens/singleMatch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//screen import
import '../screens/dashboard_screen.dart';
import '../screens/login_screen.dart';
// import '../screens/register_screen.dart';

class GreetingScreen extends StatelessWidget {
  static const routeName = '/greeting';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white
      //color set to transperent or set your own color
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          elevation: 0,
          brightness: Brightness.light,
        ),
      ),
      body: Center(
        child: Container(
          // alignment: Alignment.center,
          height: 200,
          width: 300,
            child: Card(
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SingleMatchScreen.routeName);
                    },
                    child: Text('Single match'),
                    color: Colors.red,
                    elevation: 5,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                    child: Text('Tournaments'),
                    color: Colors.red,
                    elevation: 5,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DashboardScreen.routeName);
                    },
                    child: Text('Knock outs'),
                    color: Colors.red,
                    elevation: 5,
                  ),
                ],
              ),
            ),
          
        ),
      ),
    );
  }
}
