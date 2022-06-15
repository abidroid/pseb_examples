import 'package:flutter/material.dart';
import 'package:pseb_examples/screens/stf_four.dart';
import 'package:pseb_examples/screens/stf_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Text('1'),
            title: const Text('Stateful example 1'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const StfOne();
              }));
            },
          ),
          ListTile(
            leading: const Text('2'),
            title: const Text('Stateful example 4'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const StfFour();
              }));
            },
          ),
        ],
      ),
    );
  }
}
