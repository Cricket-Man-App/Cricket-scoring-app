import 'package:flutter/material.dart';

import './extrasDetail_screen.dart';
import '../widgets/appDrawer.dart';

enum toss { hostTeam, vistorTeam }

class SingleMatchScreen extends StatefulWidget {
  static const routeName = './singleMatch';

  @override
  _SingleMatchScreenState createState() => _SingleMatchScreenState();
}

class _SingleMatchScreenState extends State<SingleMatchScreen> {
  bool tossHost = false;
  bool tossVistor = false;
  bool optedToHost = false;
  bool optedToVisitor = false;
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
        title: const Text('Cricket Man'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(ExtrasDetailScreen.routeName);
        },
        label: Text(
          'Save & Next',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home))
      //   ],
      // ),
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
                              Text('Teams',
                                  style: Theme.of(context).textTheme.headline6),
                              Padding(
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
                                                  BorderRadius.circular(10.0)),
                                          hintText: "Host Team",
                                        ),
                                        keyboardType: TextInputType.text,
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
                                                    BorderRadius.circular(
                                                        10.0)),
                                            hintText: "Visitor Team"),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Toss',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ButtonBar(
                                    alignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Host'),
                                      ConstrainedBox(
                                        constraints: BoxConstraints.tightFor(
                                            width: 60, height: 60),
                                        child: Checkbox(
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.red,
                                          value: this.tossHost,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.tossHost = value;
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text('Vistors'),
                                      ConstrainedBox(
                                        constraints: BoxConstraints.tightFor(
                                            width: 60, height: 60),
                                        child: Checkbox(
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.red,
                                          value: this.tossVistor,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.tossVistor = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Opted to',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ButtonBar(
                                    alignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Bat'),
                                      ConstrainedBox(
                                        constraints: BoxConstraints.tightFor(
                                            width: 60, height: 60),
                                        child: Checkbox(
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.red,
                                          value: this.optedToHost,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.optedToHost = value;
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text('Bowl'),
                                      ConstrainedBox(
                                        constraints: BoxConstraints.tightFor(
                                            width: 60, height: 60),
                                        child: Checkbox(
                                          checkColor: Colors.greenAccent,
                                          activeColor: Colors.red,
                                          value: this.optedToVisitor,
                                          onChanged: (bool value) {
                                            setState(() {
                                              this.optedToVisitor = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(15.0),
                              //   child: Column(
                              //     children: [
                              //       Padding(
                              //           padding: const EdgeInsets.symmetric(
                              //               vertical: 20),
                              //           child: ElevatedButton(
                              //             child: Text('Next',
                              //                 style: TextStyle(fontSize: 25)),
                              //             onPressed: () {
                              //               // Navigator.of(context).pushNamed(
                              //               //     ExtrasDetailScreen.routeName);
                              //             },
                              //             style: ElevatedButton.styleFrom(
                              //                 shape:
                              //                     const BeveledRectangleBorder(
                              //                         borderRadius:
                              //                             BorderRadius.all(
                              //                                 Radius.circular(
                              //                                     5))),
                              //                 elevation: 5),
                              //           ))
                              //     ],
                              //   ),
                              // )
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
