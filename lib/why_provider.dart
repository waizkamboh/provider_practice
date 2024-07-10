import 'dart:async';
import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer){
      count++;
      setState(() {


      });

    });
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('Build + $count');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Why Provider'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
            style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700
            ),
          ),
          Center(
            child: Text(count.toString(), style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700
            ),),
          )
          

        ],
      ),
    );
  }
}
