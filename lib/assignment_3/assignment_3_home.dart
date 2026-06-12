import 'package:flutter/material.dart';
import 'package:new_flutter_application_1/assignment_3/assignment_3_value.dart';

class Assignment3Home extends StatefulWidget {
  const Assignment3Home({super.key});

  @override
  State<Assignment3Home> createState() => _Assignment3HomeState();
}

class _Assignment3HomeState extends State<Assignment3Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter value'),
            SizedBox(height: 20),
            Text(index.toString(), style: TextStyle(fontSize: 25)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index++;
                    });
                  },
                  child: Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Assignment3Value(value: index.toString()),
                      ),
                    );
                  },
                  child: Text('Open Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
