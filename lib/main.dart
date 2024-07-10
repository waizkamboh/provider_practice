import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/count_provider.dart';
import 'package:provider_tutorials/screen/count_example.dart';
import 'package:provider_tutorials/screen/slider_example.dart';
import 'package:provider_tutorials/statefull_widget.dart';
import 'package:provider_tutorials/stateless_widget.dart';
import 'package:provider_tutorials/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CountProvider(),
       child: MaterialApp(
           debugShowCheckedModeBanner: false,
           title: 'Flutter Demo',
           theme: ThemeData(
             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
             useMaterial3: true,
           ),
           home: const SliderExample()
       ),
    );

  }
}

