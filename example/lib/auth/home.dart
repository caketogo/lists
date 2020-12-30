import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:example/auth/login.dart';
import 'package:example/api/api.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final _storage = FlutterSecureStorage();



// Create storage
@override



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home>{

  @override

  Widget build(BuildContext context) {
    var name = await storage.read(key: 'name');
    print(name);
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('asashash',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Center(
              child: RaisedButton(
                elevation: 10,
                onPressed: (){
                  var result =  Network().logout();
                },
                color: Colors.teal,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }


}