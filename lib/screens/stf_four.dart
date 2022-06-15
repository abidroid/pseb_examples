import 'package:flutter/material.dart';

class StfFour extends StatefulWidget {
  const StfFour({Key? key}) : super(key: key);

  @override
  State<StfFour> createState() => _StfFourState();
}

class _StfFourState extends State<StfFour> {
  bool bulbStatus = false; // state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Example Four'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.lightbulb,
              size: 120,
              color: bulbStatus ? Colors.amber : Colors.black,
            ),
            Switch(
                value: bulbStatus,
                onChanged: (bool isChecked) {
                  setState(() {
                    bulbStatus = isChecked;
                  });
                })
          ],
        ),
      ),
    );
  }
}
