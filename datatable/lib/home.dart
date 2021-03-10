import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "DataTable";
  Widget bodyData() => DataTable(
        onSelectAll: (b) {},
        sortColumnIndex: 0,
        sortAscending: true,
        columns: <DataColumn>[
          DataColumn(
            label: Text('Fist Name'),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.firstName.compareTo(b.firstName));
              });
            },
            tooltip: "To display first name of the name",
          ),
          DataColumn(
            label: Text('Last Name'),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.lastName.compareTo(b.lastName));
              });
            },
            tooltip: "To display last name of the name",
          ),
        ],
        rows: names
            .map((name) => DataRow(
                  // onSelectChanged: (b){},
                  cells: [
                    DataCell(
                      Text(name.firstName),
                      showEditIcon: false,
                      placeholder: false,
                    ),
                    DataCell(
                      Text(name.lastName),
                      showEditIcon: false,
                      placeholder: false,
                    ),
                  ],
                ))
            .toList(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        child: bodyData(),
      ),
    );
  }
}

class Name {
  late String firstName;
  late String lastName;

  Name({required this.firstName, required this.lastName});
}

var names = <Name>[
  Name(firstName: 'Mr.B', lastName: 'Relax'),
  Name(firstName: 'Elliot', lastName: 'Alderson'),
  Name(firstName: 'Eva', lastName: 'Elifie'),
];
