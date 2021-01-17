import 'package:flutter/material.dart';

import '../widgets/appBar.dart';
import '../screens/openingPlayers_screen.dart';

enum toss { hostTeam, vistorTeam }

class SingleMatchScreen extends StatefulWidget {
  static const routeName = './singleMatch';

  @override
  _SingleMatchScreenState createState() => _SingleMatchScreenState();
}

class _SingleMatchScreenState extends State<SingleMatchScreen> {
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cricket Man'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Center(
                            child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Form(
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            disabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            hintText: "Host Team",
                                          ),
                                          keyboardType: TextInputType.text,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0)),
                                              hintText: "Visitor Team"),
                                          keyboardType: TextInputType.text,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Toss won by'),
                                  ButtonBar(
                                    alignment: MainAxisAlignment.center,
                                    children: [
                                      Radio(
                                          value: 1,
                                          groupValue: selectedRadio,
                                          activeColor: Colors.red,
                                          onChanged: (val) {
                                            print('Print 1');
                                            setSelectedRadio(val);
                                          }),
                                      Text('Host'),
                                      Radio(
                                          value: 2,
                                          groupValue: selectedRadio,
                                          activeColor: Colors.red,
                                          onChanged: (val) {
                                            print('Print 1');
                                            setSelectedRadio(val);
                                          }),
                                      Text('Vistor'),
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Opted to'),
                                  ButtonBar(
                                    alignment: MainAxisAlignment.center,
                                    children: [
                                      Radio(
                                          value: 1,
                                          groupValue: selectedRadio,
                                          activeColor: Colors.red,
                                          onChanged: (val) {
                                            print('Print 1');
                                            setSelectedRadio(val);
                                          }),
                                      Text('Bat'),
                                      Radio(
                                          value: 2,
                                          groupValue: selectedRadio,
                                          activeColor: Colors.red,
                                          onChanged: (val) {
                                            print('Print 1');
                                            setSelectedRadio(val);
                                          }),
                                      Text('Bowl'),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                          disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          hintText: "Overs"),
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                          disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          hintText: "Players per team"),
                                      keyboardType: TextInputType.number,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
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
                                            Navigator.of(context).pushNamed(
                                                OpeningPlayersScreen.routeName);
                                          }),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
