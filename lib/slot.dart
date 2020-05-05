import 'package:flutter/material.dart';

void main() => runApp(MySlot());

class MySlot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MySlot> {
  List _time = ["11:00am - 12:00pm", "12:00pm - 1:00pm", "2:00pm - 3:00pm", "4:00pm - 5:00pm","5:00pm - 6:00pm", "6:00pm - 7:00pm","7:00pm - 8:00pm"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedTime;

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_time);
    _selectedTime = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List time) {
    List<DropdownMenuItem<String>> items = List();
    for (String time in time) {
      items.add(DropdownMenuItem(value: time, child: Text(time)));
    }
    return items;
  }

  void changedDropDownItem(String selectedTime) {
    setState(() {
      _selectedTime = selectedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Choose a time slot"),
        ),
        body: Container(
          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Please choose a slot: "),
                  DropdownButton(
                    value: _selectedTime,
                    items: _dropDownMenuItems,
                    onChanged: changedDropDownItem,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
