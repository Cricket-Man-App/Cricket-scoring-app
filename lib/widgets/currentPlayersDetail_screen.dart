import 'package:flutter/material.dart';

class CurrentPlayersDetail extends StatefulWidget {
  static const routeName = '/current-players-detail';

  CurrentPlayersDetail({Key key}) : super(key: key);

  @override
  _CurrentPlayersDetailState createState() => _CurrentPlayersDetailState();
}

class _CurrentPlayersDetailState extends State<CurrentPlayersDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Batsman :'),
                    Text('Kholi 5*'),
                    Text('Finch 2'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text('Bowler :'), Text('Chahar'), Text('1-0-7-0')],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
