import 'package:example/event.dart';
import 'package:example/drag_handle_example.dart';
import 'package:example/drag_into_list_example.dart';
import 'package:example/expansion_tile_example.dart';
import 'package:example/fixed_example.dart';
import 'package:example/horizontal_example.dart';
import 'package:example/list_tile_example.dart';
import 'package:example/sliver_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drag and Drop Lists',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/list_tile_example',
      routes: {
        '/': (context) => Event(),
        '/list_tile_example': (context) => ListTileExample(),
        '/expansion_tile_example': (context) => ExpansionTileExample(),
        '/sliver_example': (context) => SliverExample(),
        '/horizontal_example': (context) => HorizontalExample(),
        '/drag_into_list_example': (context) => DragIntoListExample(),
        '/fixed_example': (context) => FixedExample(),
        '/drag_handle_example': (context) => DragHandleExample(),
      },
    );
  }
}
