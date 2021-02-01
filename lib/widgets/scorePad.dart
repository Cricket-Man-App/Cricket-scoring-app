import 'package:flutter/material.dart';

class ScorePad extends StatefulWidget {
  ScorePad({Key key}) : super(key: key);

  @override
  _ScorePadState createState() => _ScorePadState();
}

class _ScorePadState extends State<ScorePad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shadowColor: Colors.red,
        elevation: 4,
        margin: EdgeInsets.symmetric(horizontal: 10.0),
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
                        child: Text('0',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('2',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('3',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
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
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('4',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('5',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('6',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('W',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
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



// import 'package:flutter/material.dart';

// class ScorePad extends StatelessWidget {
//   static const routeName = '/score-pad';
//   final int data;

//   const ScorePad({Key key, this.data}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: Colors.red,
//           ),
//           width: 60,
//           height: 60,
//           child: Center(
//               child: Text(
//             data.toString(),
//             style: TextStyle(color: Colors.white),
//           )),
//         ),
//       ),
//     );
//   }
// }

// class RunPad extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       child: Column(
//         children: [
//           Row(
//             children: List<ScorePad>.generate(
//                 5,
//                 (index) => ScorePad(
//                       data: index,
//                     )),
//           ),
//           Row(
//             children: List<ScorePad>.generate(
//                 2,
//                 (index) => ScorePad(
//                       data: index + 5,
//                     )),
//           ),
//         ],
//       ),
//     );
//   }
// }