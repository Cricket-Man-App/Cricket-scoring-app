import 'package:flutter/material.dart';



class ThisOver extends StatefulWidget {
  
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
            margin: EdgeInsets.all(10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('This over : '),
                ],
              ),
              width: 353,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
            )
          ),
        ],
      ),
    );
  }
}
