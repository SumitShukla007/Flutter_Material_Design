import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class DataTableScreen extends StatefulWidget {
  @override
  _DataTableScreenState createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<Country> countries = Country.getCountries();
  bool _sort = true;
  int SORT_INDEX = 0; //country name

  sortIndexColumn(index, sort) {
    debugPrint("sortIndexColumn Index=$index Sort=$sort");
    if (index == SORT_INDEX) {
      if (sort) {
        countries.sort((Country obj1, Country obj2) => obj1.name.compareTo(obj2.name));
      } else {
        countries.sort((Country obj1, Country obj2) => obj2.name.compareTo(obj1.name));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.DATA_TABLE),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortAscending: _sort,
              sortColumnIndex: SORT_INDEX, //index that we want to sort in the data table.
              rows: List.generate(countries.length, (index) {
                return DataRow(
                  selected: countries[index].selected,
                  onSelectChanged: (bool isSelected) {
                    // debugPrint("onSelectChanged $isSelected");
                    setState(() {
                      countries[index].selected = isSelected;
                    });
                  },
                  cells: <DataCell>[
                    // DataCell(Text("${index + 1}.")),
                    DataCell(Text("${countries[index].name}")),
                    DataCell(Image(width: 40.0, height: 40.0, image: AssetImage("${countries[index].flag}"))),
                    DataCell(Text("${countries[index].capital}")),
                    DataCell(Text("${countries[index].currency}")),
                  ],
                );
              }),
              columns: <DataColumn>[
                // DataColumn(label: Text("Index")),
                DataColumn(
                  label: Text("Country"),
                  numeric: false,
                  onSort: (index, sort) {
                    debugPrint("onSort: Index=$index Sort=$sort");
                    setState(() {
                      _sort = !_sort;
                    });
                    sortIndexColumn(index, sort);
                  },
                ),
                DataColumn(label: Text("Flag")),
                DataColumn(label: Text("Capital")),
                DataColumn(label: Text("Currency")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
