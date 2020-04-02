import 'package:flutter/material.dart';
import 'package:redhotblocpatternsample/page/sample_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // this is RedHotSixBull's basic bloc sample app
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
