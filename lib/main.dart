//packages import
import 'package:cricket_scoring_app/screens/scoreboard_screen.dart';
import 'package:flutter/material.dart';

//screen imports
// import './screens/greeting_screen.dart';
// import './screens/register_screen.dart';
import './screens/dashboard_screen.dart';
// import './screens/login_screen.dart';
import './screens/singleMatch_screen.dart';
import './screens/openingPlayers_screen.dart';

//widget imports
// import './widgets/bottomNavigationBar.dart';

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
      ),
      home: SingleMatchScreen(),
      //Navigation routes
      routes: {
        DashboardScreen.routeName: (ctx) => DashboardScreen(),
        SingleMatchScreen.routeName: (ctx) => SingleMatchScreen(),
        OpeningPlayersScreen.routeName: (ctx) => OpeningPlayersScreen(),
        ScoreBoardScreen.routeName: (ctx) => ScoreBoardScreen()
      },
    );
  }
}
