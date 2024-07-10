import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1,
              value: value, onChanged: (val){
            value = val;
            setState(() {

            });

          }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration:  BoxDecoration(
                    color: Colors.red.withOpacity(value),
                  ),
                  child: const Text('Container1'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration:  BoxDecoration(
                    color: Colors.green.withOpacity(value),
                  ),
                  child: const Text('Container2'),
                ),
              ),

            ],
          )
        ],
      ),

    );
  }
}
