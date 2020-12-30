import 'dart:convert' show json, base64, ascii;
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:json_traverse/json_traverse.dart';
// Create storage
final storage = new FlutterSecureStorage();



class Network{
  final String api_url = 'https://www.seatingplanner.co.uk/api/';

  Future <bool> login(data) async {
    var url = api_url + 'login';
    var res = await http.post(
        url,
        body: data
    );

    var body = JSONTraverse(res.body);


    var token = body.query('meta')['token'];


    print(token);
    //print(meta.query('token'));

  return true;
  }


}