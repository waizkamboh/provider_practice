import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {
   StatelessScreen({super.key});

  int x = 0;

  @override
  Widget build(BuildContext context) {

    print('Build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Tutorial'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(x.toString(),  style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700
          ),
          ))

        ],
      ),
      floatingActionButton: FloatingActionButton(
        
          onPressed: (){
            x++;
            print(x);
          },
        child: const Icon(Icons.add),
        
      ),

    );
  }
}
