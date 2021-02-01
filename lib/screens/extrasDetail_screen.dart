import 'package:flutter/material.dart';


import './openersDetail_screen.dart';

class ExtrasDetailScreen extends StatefulWidget {
  static const routeName = './extras-detail';

  @override
  _ExtrasDetailScreenState createState() => _ExtrasDetailScreenState();
}

class _ExtrasDetailScreenState extends State<ExtrasDetailScreen> {
  bool noBallReBallToggle = false;
  var noBallTextvalue = 'Re ball';
  void noBallReBallFunction(bool value) {
    if (noBallReBallToggle == false) {
      setState(() {
        noBallReBallToggle = true;
        noBallTextvalue = 'Re ball ON';
      });
      print('Re ball is ON');
    } else {
      setState(() {
        noBallReBallToggle = false;
      });
      print('Re ball is OFF');
    }
    // print('Pressed');
  }

  bool noBallRunToggle = false;
  var noBallTextValue = 'Run';
  void noBallRunFunction(bool value) {
    if (noBallRunToggle == false) {
      setState(() {
        noBallRunToggle = true;
      });
    } else {
      setState(() {
        noBallRunToggle = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Details'),
      ),
      floatingActionButton: FloatingActionButton.extended( 
          onPressed: () {
          Navigator.of(context).pushNamed(OpenersDetailScreen.routeName);
        }, 
        label: Text('Save & Next', style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: 'Players per Team'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('No-ball'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                elevation: 2,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Re Ball'),
                          Switch(
                              value: noBallReBallToggle,
                              onChanged: noBallReBallFunction),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Run'),
                          Switch(
                              value: noBallReBallToggle,
                              onChanged: noBallReBallFunction),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Wide-ball'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: InkWell(
                child: Card(
                  elevation: 2,
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Re Ball'),
                            Switch(
                                value: noBallReBallToggle,
                                onChanged: noBallReBallFunction),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Run'),
                            Switch(
                                value: noBallReBallToggle,
                                onChanged: noBallReBallFunction),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
