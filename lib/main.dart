import 'package:flutter/material.dart';

ValueKey<String> listOfPeople = ValueKey('listOfPeople');

List<String> people = [
  "John Brown",
  "Janet Doe",
  "Greg Jackson",
  "Zoe Cox",
  "Samuel Burton",
  "Natalie Smith",
  "Clementine Sheehan",
  "Felix Ingram",
  "Jess Jimenez",
  "Seren Burton",
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int i=0;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ListView Testing',
        home: Scaffold(
          appBar: AppBar(title: Text('ListView Testing')),
          body: ListView(
            key: listOfPeople,
            scrollDirection: Axis.vertical,
            children: people
                .map((personName) => Card(
              color: i%2 == 0 ? Colors.black26: Colors.black54,
              /// if you rempve the ListTile, the test works. Why ?
              child: ListTile(
                title: Text(
                  '${++i}  $personName',
                  textScaleFactor: 2.0,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ))
                .toList(),
          ),
        ));
  }
}
