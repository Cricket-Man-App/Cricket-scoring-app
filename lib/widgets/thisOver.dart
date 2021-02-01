import 'package:flutter/material.dart';

class ThisOver extends StatefulWidget {
  static const routeName = '/this-over';
  @override
  _ThisOver createState() => _ThisOver();
}

class _ThisOver extends State<ThisOver> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            elevation: 3,
              margin: EdgeInsets.all(10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text('This over : 0, 0, 2, 0, 4, 0, 1, 0, 1, 0, 0, 4, 4, 0, 0, 3, 1, 1, 0, 2, 0, 3, 0, 6'),
                        ],
                      )),
                  ],
                ),
                width: double.infinity,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
              )),
        ],
      ),
    );
  }
}
