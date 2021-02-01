import 'package:flutter/material.dart';


import './scoreboard_screen.dart';

class OpenersDetailScreen extends StatefulWidget {
  static const routeName = './openers-detail';
  @override
  _OpenersDetailScreenState createState() => _OpenersDetailScreenState();
}

class _OpenersDetailScreenState extends State<OpenersDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Openers Detail'),
      ),
      floatingActionButton: FloatingActionButton.extended( 
          onPressed: () {
          Navigator.of(context).pushNamed(ScoreBoardScreen.routeName);
        }, 
        label: Text('Save & Next', style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                elevation: 3,
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Batting Team'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration:
                            InputDecoration(labelText: 'Striker'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration:
                            InputDecoration(labelText: 'Non-Striker'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Bowling Team'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                elevation: 3,
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration:
                            InputDecoration(labelText: 'Opening Bowler'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
