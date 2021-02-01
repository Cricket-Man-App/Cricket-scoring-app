import 'package:flutter/material.dart';

class NewBatsmanScreen extends StatelessWidget {
  static const routeName = './new-batsman';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Batsman'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                margin: EdgeInsets.all(30),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'New Batsman'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text('Next', style: TextStyle(fontSize: 25)),
                  onPressed: () {
                    // Navigator.of(context).pushNamed(ScoreBoardScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 5),
                ),
              ),
            ],
          ),
        ));
  }
}
