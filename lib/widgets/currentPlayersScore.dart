import 'package:flutter/material.dart';

class CurrentPlayersScore extends StatefulWidget {
  @override
  _CurrentPlayersScore createState() => _CurrentPlayersScore();
}

class _CurrentPlayersScore extends State<CurrentPlayersScore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 5, 0, 5),
      child: Card(
        child: Container(
          width: 368,
          child: Column(
            children: [
              DataTable(
                columnSpacing: 160,
                columns: [
                  DataColumn(label: Text('Batsman', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),)),
                  DataColumn(label: Text('Score', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),))
                ],
                rows: [
                  DataRow(cells: [DataCell(Text('Aaron Finch')), DataCell(Text('0*'))]),
                  DataRow(cells: [DataCell(Text('Virat Kholi')), DataCell(Text('0'))]),
                ],
              ),
              DataTable(
                columnSpacing: 185,
                columns: [
                    DataColumn(label: Text('Bowler', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),)),
                    DataColumn(label: Text('Score', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),))
                   ],
                rows: [
                    DataRow(cells: [DataCell(Text('D Chahar')),DataCell(Text('0-0-0-0')),],)
                  ]
                )
            ],
          ),
        )
      ),
    );
  }
}
