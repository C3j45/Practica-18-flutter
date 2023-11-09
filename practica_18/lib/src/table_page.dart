import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practica 18 - orientación'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              //1: FractionColumnWidth( 0.5)
            },
            //border: TableBorder.all(),
            children: [
              TableRow(children: [
                RectangLeLarge(),
                RectangLeMedium(),
                RectangLeSmall(),
              ]),
              TableRow(children: [
                RectangLeSmall(),
                RectangLeLarge(),
                RectangLeMedium(),
              ]),
              TableRow(children: [
                RectangLeMedium(),
                RectangLeSmall(),
                RectangLeLarge(),
              ]),
            ],
          ),
        ));
  }
}

class RectangLeLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.red,
        ));
  }
}

class RectangLeMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.green,
        ));
  }
}

class RectangLeSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ));
  }
}
