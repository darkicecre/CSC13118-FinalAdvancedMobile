import 'package:flutter/material.dart';

class LastestBook extends StatefulWidget {
  const LastestBook({super.key});

  @override
  State<LastestBook> createState() => _LastestBookState();
}

class _LastestBookState extends State<LastestBook> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.only(left: 30, top: 20, bottom: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Latest Book",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          )),
      Container(
        margin: EdgeInsets.only(left: 30, right: 20, bottom: 20),
        child: Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              // 0: IntrinsicColumnWidth(),
              0: FlexColumnWidth(30),
              1: FlexColumnWidth(100),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(children: [
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text("Name")),
                Table(
                    border: TableBorder.all(),
                    columnWidths: const <int, TableColumnWidth>{
                      // 0: IntrinsicColumnWidth(),
                      0: FlexColumnWidth(40),
                      1: FlexColumnWidth(30),
                      2: FlexColumnWidth(30),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(children: [
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: InkWell(
                                child: Text(
                              "sample.pdf",
                              style: TextStyle(color: Colors.blue),
                            ))),
                        Container(
                            alignment: Alignment.center,
                            color: Color.fromRGBO(240, 240, 240, 1),
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Text("Page")),
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Text("0")),
                      ])
                    ])
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    alignment: Alignment.center,
                    child: Text("Description")),
                Container(child: Text("")),
              ])
            ]),
      )
    ]);
  }
}
