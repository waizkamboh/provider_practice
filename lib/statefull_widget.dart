import 'package:flutter/material.dart';

class StatefullScreen extends StatefulWidget {
  const StatefullScreen({super.key});

  @override
  State<StatefullScreen> createState() => _StatefullScreenState();
}

class _StatefullScreenState extends State<StatefullScreen> {

  int x = 0;
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Tutorials'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Center(
            child: Text(x.toString(),  style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700
            ),
            ),
          )
        ],

      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
          onPressed: (){
            x++;
            setState(() {
            });
            print(x);


          }
      ),

    );
  }
}
