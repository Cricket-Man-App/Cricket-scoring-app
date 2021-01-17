import 'package:cricket_scoring_app/screens/scoreboard_screen.dart';
import 'package:flutter/material.dart';

class OpeningPlayersScreen extends StatefulWidget {
  static const routeName = './openingplayers';

  @override
  _OpeningPlayersScreenState createState() => _OpeningPlayersScreenState();
}

class _OpeningPlayersScreenState extends State<OpeningPlayersScreen> {
  int selectWideRadio = 0;
  int selectNoballRadio = 0;

  @override
  void initState() {
    super.initState();
    selectNoballRadio = 0;
    selectNoballRadio = 0;
  }

  setselectWideRadio(int val) {
    setState(() {
      selectWideRadio = val;
    });
  }

  setSelectecNoballRadio(int val) {
    setState(() {
      selectNoballRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Openers detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: "Striker",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: "Non-Striker",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: "Opening bowler",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Re-ball for Wide : '),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: selectWideRadio,
                              activeColor: Colors.red,
                              onChanged: (val) {
                                print('Print 1');
                                setselectWideRadio(val);
                              }),
                          Text('Yes'),
                          Radio(
                              value: 2,
                              groupValue: selectWideRadio,
                              activeColor: Colors.red,
                              onChanged: (val) {
                                print('Print 1');
                                setselectWideRadio(val);
                              }),
                          Text('No'),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Re-ball for No-ball : '),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: selectNoballRadio,
                              activeColor: Colors.red,
                              onChanged: (val) {
                                print('Print 1');
                                setSelectecNoballRadio(val);
                              }),
                          Text('Yes'),
                          Radio(
                              value: 2,
                              groupValue: selectNoballRadio,
                              activeColor: Colors.red,
                              onChanged: (val) {
                                print('Print 1');
                                setSelectecNoballRadio(val);
                              }),
                          Text('No'),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: RaisedButton(
                        color: Colors.red,
                        child: Text(
                          'Start match',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins'),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ScoreBoardScreen.routeName);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
