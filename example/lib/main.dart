import 'package:example/event.dart';
import 'package:example/drag_handle_example.dart';
import 'package:example/drag_into_list_example.dart';
import 'package:example/expansion_tile_example.dart';
import 'package:example/fixed_example.dart';
import 'package:example/horizontal_example.dart';
import 'package:example/list_tile_example.dart';
import 'package:example/sliver_example.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:example/auth/login.dart';
import 'package:example/auth/home.dart';

// Create storage
final storage = new FlutterSecureStorage();



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

        return MaterialApp(
          title: 'Seating Planner',
          home:CheckAuth(),
        );

    /**
    return MaterialApp(
      title: 'Drag and Drop Lists',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
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
        */
  }
}
class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async{

  }
  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = Home();
    } else {
      child = Login();
    }
    return Scaffold(
      body: child,
    );
  }
}
