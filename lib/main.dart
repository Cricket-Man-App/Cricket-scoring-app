//packages import
import 'package:flutter/material.dart';

//screen imports
import './screens/scoreboard_screen.dart';
import './screens/singleMatch_screen.dart';
import './screens/openersDetail_screen.dart';
import './screens/extrasDetail_screen.dart';
import './screens/newBatsman_screen.dart';
import './screens/newBowler_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cricket Man',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.white,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline5: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(
            fontSize: 22.0,
          ),
          bodyText2: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      home: SingleMatchScreen(),
      //Navigation routes
      routes: {
        SingleMatchScreen.routeName: (ctx) => SingleMatchScreen(),
        OpenersDetailScreen.routeName: (ctx) => OpenersDetailScreen(),
        ExtrasDetailScreen.routeName: (ctx) => ExtrasDetailScreen(),
        ScoreBoardScreen.routeName: (ctx) => ScoreBoardScreen(),
        NewBatsmanScreen.routeName: (ctx) => NewBatsmanScreen(),
        NewBowlerScreen.routeName: (ctx) => NewBowlerScreen(),
      },
    );
  }
}
