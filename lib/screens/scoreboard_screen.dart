//package imports
import 'dart:ui';
import 'package:cricket_scoring_app/widgets/extrasPad.dart';
import 'package:flutter/material.dart';

//widgets imports
import '../widgets/currentPlayersDetail_screen.dart';
import '../widgets/thisOver.dart';
import '../widgets/scorePad.dart';

class ScoreBoardScreen extends StatefulWidget {
  static const routeName = './scoreboard';
  @override
  _ScoreBoardScreenState createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scoreboard'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.of(context).pushNamed(ExtrasDetailScreen.routeName);
        },
        label: Text(
          'Save',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10, 20.0, 30),
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  'CSK',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  '200/5',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  '20.0 Overs',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  'RCB',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  '7/0',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  '1.0 Overs',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(10.0),
                      //       child: Column(
                      //         children: [
                      //           Text(
                      //             'RCB need 194 runs in 19 overs at 10.21.RR',
                      //             style: TextStyle(
                      //                 color: Colors.white, fontSize: 16),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: CurrentPlayersDetail(),
            ),
            Container(
              child: ThisOver(),
            ),
            Container(
              child: Column(
                children: [
                  ScorePad(),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [ExtrasPad()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
