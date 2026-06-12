import 'package:flutter/material.dart';

class Assignment3Value extends StatelessWidget {
  const Assignment3Value({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text('Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received c value'),
            SizedBox(height: 20),
            Text(value.toString(), style: TextStyle(fontSize: 25)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
