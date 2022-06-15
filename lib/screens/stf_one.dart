import 'package:flutter/material.dart';

class StfOne extends StatefulWidget {
  const StfOne({Key? key}) : super(key: key);

  @override
  State<StfOne> createState() => _StfOneState();
}

class _StfOneState extends State<StfOne> {
  String message = 'Hello World'; // state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Example One'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message),
            ElevatedButton(onPressed: () {
              setState((){
                message = 'Flutter is Fun';
              });
            }, child: const Text('Press Me')),
          ],
        ),
      ),
    );
  }
}
