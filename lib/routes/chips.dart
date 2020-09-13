import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class ChipsScreen extends StatefulWidget {
  @override
  _ChipsScreenState createState() => _ChipsScreenState();
}

class _ChipsScreenState extends State<ChipsScreen> {
  int chipChoiceSelected = -1;
  bool filterChip1 = false;
  bool filterChip2 = false;
  bool filterChip3 = false;

  bool isActionSelected = false;
  bool isDelete = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.CHIPS),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Action Chip",
              style: TextStyle(color: Colors.blue),
            ),
            actionChip(),
            Divider(),
            SizedBox(
              height: 16.0,
            ),
            Text(
              "Choice Chip",
              style: TextStyle(color: Colors.blue),
            ),
            choiceChip(),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Filters Chip",
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(
              height: 16.0,
            ),
            filterChip(),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Input Chip",
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(
              height: 16.0,
            ),
            inputChip(),
          ],
        ),
      ),
    );
  }

  actionChip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ActionChip(
          onPressed: () {
            setState(() {
              isActionSelected = !isActionSelected;
            });
          },
          avatar: isActionSelected
              ? CircularProgressIndicator()
              : const Icon(
                  Icons.access_time,
                  color: Colors.black54,
                ),
          label: Text("ActionChip"),
        ),
        ActionChip(
          onPressed: () {},
          avatar: const Icon(
            Icons.notifications,
            color: Colors.black54,
          ),
          label: Text("ActionChip"),
        ),
      ],
    );
  }

  choiceChip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ChoiceChip(
          label: Text("Choice 1"),
          selected: chipChoiceSelected == 0,
          onSelected: (value) {
            setState(() {
              chipChoiceSelected = value ? 0 : -1;
            });
          },
        ),
        ChoiceChip(
          label: Text("Choice 2"),
          selected: chipChoiceSelected == 1,
          onSelected: (value) {
            setState(() {
              chipChoiceSelected = value ? 1 : -1;
            });
          },
        ),
        ChoiceChip(
          label: Text("Choice 3"),
          selected: chipChoiceSelected == 2,
          onSelected: (value) {
            setState(() {
              chipChoiceSelected = value ? 2 : -1;
            });
          },
        ),
      ],
    );
  }

  filterChip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FilterChip(
          label: Text("Choice 1"),
          selected: filterChip1,
          onSelected: (value) {
            setState(() {
              filterChip1 = !filterChip1;
            });
          },
        ),
        FilterChip(
          label: Text("Choice 2"),
          selected: filterChip2,
          onSelected: (value) {
            setState(() {
              filterChip2 = !filterChip2;
            });
          },
        ),
        FilterChip(
          label: Text("Choice 3"),
          selected: filterChip3,
          onSelected: (value) {
            setState(() {
              filterChip3 = !filterChip3;
            });
          },
        ),
      ],
    );
  }

  inputChip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InputChip(
          avatar: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor,
            child: Text('H'),
          ),
          label: Text('Hello'),
          onPressed: () {
            print('Hello');
          },
        ),
        Visibility(
          visible: isDelete,
          child: InputChip(
            onDeleted: () {
              setState(() {
                isDelete = !isDelete;
              });
            },
            onPressed: () {},
            avatar: Icon(
              Icons.directions_bike,
              size: 20,
              color: Colors.black,
            ),
            label: Text('Hello'),
          ),
        )
      ],
    );
  }
}
