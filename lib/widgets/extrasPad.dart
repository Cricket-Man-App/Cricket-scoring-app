import 'package:flutter/material.dart';

class ExtrasPad extends StatelessWidget {
  static const routeName = '/extras-pad';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        shadowColor: Colors.red,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child:
                            Text('Wide', style: TextStyle(color: Colors.white)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'No ball',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Leg Byes',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Byes',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child:
                            Text('Undo', style: TextStyle(color: Colors.white)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Retire',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Extras',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Patnerships',
                            style: TextStyle(color: Colors.white)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Exit Match',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
