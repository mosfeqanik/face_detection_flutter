import 'package:flutter/material.dart';

import 'face_detector_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SizedBox(
      width: 350,
      height: 80,
      child: ElevatedButton(
        child: Text("GO to Face Detection"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FaceDetectorpage(),
            ),
          );
        },
      ),
    );
  }
}
