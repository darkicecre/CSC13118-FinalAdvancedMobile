import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class BookTutorTable extends StatefulWidget {
  const BookTutorTable({super.key});

  @override
  State<BookTutorTable> createState() => _BookTutorTableState();
}

class _BookTutorTableState extends State<BookTutorTable> {
  int _currentPage = 1;
  final NumberPaginatorController _controller = NumberPaginatorController();
  List<String> headers = [
    '18/10-Wed',
    '19/10-Thu',
    '20/10-Fri',
    '21/10-Sat',
    '22/10-Sun',
    '23/10-Mon',
    '24/10-Tue',
  ];
  List<List<String>> data = [
    [
      '00:00 - 00:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '00:30 - 00:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '01:00 - 01:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '01:30 - 01:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '02:00 - 02:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '02:30 - 02:55',
      'enable',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '03:00 - 03:25',
      'enable',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '03:30 - 03:55',
      'enable',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '04:00 - 04:25',
      'enable',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '04:30 - 04:55',
      'enable',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '05:00 - 05:25',
      'enable',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '05:30 - 05:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '06:00 - 06:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '06:30 - 06:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '07:00 - 07:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '08:30 - 08:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '09:00 - 09:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '09:30 - 09:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '10:00 - 10:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '10:30 - 10:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '11:00 - 11:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '11:30 - 11:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '12:00 - 12:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '12:30 - 12:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '13:00 - 13:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '13:30 - 13:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '14:00 - 14:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '14:30 - 14:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '15:00 - 15:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '15:30 - 15:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '16:00 - 16:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '16:30 - 16:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '17:00 - 17:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '17:30 - 17:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '18:00 - 18:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '18:30 - 18:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '19:00 - 19:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '19:30 - 19:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '20:00 - 20:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '20:30 - 20:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '21:00 - 21:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '21:30 - 21:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '22:00 - 22:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '22:30 - 22:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '23:00 - 23:25',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
    [
      '23:30 - 23:55',
      'Empty',
      'reserved',
      'enable',
      'booked',
      'lock',
      'enable',
      'enable',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final rows = <TableRow>[];
    rows.add(TableRow(
        children: List<Widget>.generate(
      headers.length + 1,
      (int index) {
        return index == 0
            ? SizedBox.shrink()
            : Column(
                children: [
                  Text(headers[index - 1].split('-')[0]),
                  Text(headers[index - 1].split('-')[1])
                ],
              );
      },
    ).toList()));
    for (var rowData in data) {
      rows.add(TableRow(
          children: List<Widget>.generate(
        headers.length + 1,
        (int index) {
          switch (rowData[index]) {
            case "Empty":
              {
                return SizedBox.shrink();
              }
              break;
            case "reserved":
              {
                return Container(
                    alignment: Alignment.center,
                    child: Text("Reserved")
                );
              }
              break;
            case "enable":
              {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: SizedBox(
                    height: 30,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: Text(
                        "Book",
                        style: TextStyle(
                          height: 1.0,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => {print("login")},
                    ),
                  ),
                );
              }
              break;
            case "booked":
              {
                return Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Booked",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w500),
                    ));
              }
              break;
            case "lock":
              {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: SizedBox(
                    height: 28,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(217, 217, 217, 1)),
                      ),
                      child: Text(
                        "Book",
                        style: TextStyle(
                          height: 1.0,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      onPressed: () => {print("login")},
                    ),
                  ),
                );
              }
              break;
            default:
              {
                return Container(
                    alignment: Alignment.center,
                    color: Color.fromRGBO(249, 249, 249, 1),
                    child: Text(
                      rowData[index],
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(64, 64, 64, 1),
                          fontWeight: FontWeight.w600),
                    ));
              }
              break;
          }
        },
      ).toList()));
    }

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 20),
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, // the thickness
                      color: Color.fromRGBO(
                          24, 114, 255, 1) // the color of the border
                      ),
                ),
                onPressed: () {},
                child: const Text(
                  'Today',
                  style: TextStyle(color: Color.fromRGBO(24, 114, 255, 1)),
                ),
              ),
              NumberPaginator(
                numberPages: 5,
                initialPage: 1,
                showPrevButton: true,
                showNextButton: true,
                config: const NumberPaginatorUIConfig(
                    mode: ContentDisplayMode.hidden,
                    buttonSelectedBackgroundColor:
                        Color.fromRGBO(24, 114, 255, 1),
                    buttonUnselectedForegroundColor:
                        Color.fromRGBO(24, 114, 255, 1),
                    buttonShape: RoundedRectangleBorder()),
                onPageChange: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
              Text(
                "Oct, 2023",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        Container(
          width: 600,
          height: 1500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(105),
                    1: FixedColumnWidth(70),
                    2: FixedColumnWidth(70),
                    3: FixedColumnWidth(70),
                    4: FixedColumnWidth(70),
                    5: FixedColumnWidth(70),
                    6: FixedColumnWidth(70),
                    7: FixedColumnWidth(70),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: rows)
            ],
          ),
        )
      ],
    );
  }
}
