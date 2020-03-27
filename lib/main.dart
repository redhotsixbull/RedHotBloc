import 'package:flutter/material.dart';
import 'package:redhotblocpatternsample/page/sample_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Sample',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SamplePage(title: 'BloC sample'),
    );
  }
}
