//Md Rakibul Hassan 1720465

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  final List<String> names = <String>[
    'Mango',
    'Banana',
    'Grape',
    'Orange',
    'Guava',
    'Blackberry',
    'Dates',
    'Strawberry',
    'Apple',
    'Rambutan',
  ];

  String myValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Fruits Bazzer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightGreenAccent, width: 2.0)),
                hintText: "Enter number between 1 to 10",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              myValue!,
              style: TextStyle(
                fontSize: 40,
                color: Colors.orange,
              ),
            ),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    myValue = names[int.parse(myController.text)];
                  });
                },
                child: Text('Search'))
          ],
        ),
      ),
    );
  }
}
