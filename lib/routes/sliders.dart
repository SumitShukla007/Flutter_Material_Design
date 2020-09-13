import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  RangeValues _rangeValues = const RangeValues(40, 80);
  RangeValues _rangeDisValues = const RangeValues(40, 80);
  double _discreteValue = 20;
  double _continuousValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "Normal Slider ${_continuousValue.round()}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Slider(
              value: _continuousValue,
              min: 0,
              max: 100,
//                divisions: 50,
              label: '${_continuousValue.round().toString()}',
              onChanged: (value) {
                setState(() {
                  _continuousValue = value;
                });
              },
            ),
            Text(
              "Discrete Slider ${_discreteValue.round()}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Slider(
              value: _discreteValue,
              min: 0,
              max: 100,
              divisions: 20,
              label: '${_discreteValue.round().toString()}',
              onChanged: (value) {
                setState(() {
                  _discreteValue = value;
                });
              },
            ),
            Text(
              "Range Slider ${_rangeValues.start.round()} , ${_rangeValues.end.round()}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            RangeSlider(
              activeColor: Colors.purple,
              values: _rangeValues,
              min: 0,
              max: 100,
              labels: RangeLabels(
                _rangeValues.start.round().toString(),
                _rangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  debugPrint("Values: $values");
                  _rangeValues = values;
                });
              },
            ),
            Text(
              "Range Discrete Slider ${_rangeDisValues.start.round()} , ${_rangeDisValues.end.round()}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            RangeSlider(
              activeColor: Colors.purple,
              inactiveColor: Colors.red,
              values: _rangeDisValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(
                _rangeDisValues.start.round().toString(),
                _rangeDisValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  debugPrint("Values: $values");
                  _rangeDisValues = values;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
