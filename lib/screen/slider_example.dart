import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/slider_provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child){
            return Slider(
                min: 0,
                max: 1,
                value: value.value, onChanged: (val){
              print(val.toString());
              value.setValue(val);


            });

          }),
          Consumer<SliderProvider>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:  BoxDecoration(
                      color: Colors.red.withOpacity(value.value),
                    ),
                    child: const Text('Container1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:  BoxDecoration(
                      color: Colors.green.withOpacity(value.value),
                    ),
                    child: const Text('Container2'),
                  ),
                ),

              ],
            );


          }),
        ],
      ),

    );
  }
}
