//import 'package:http/http.dart as http';
import 'package:http/http.dart' as http;
import 'dart:convert';

final blogPageUrl = 'https://www.pukemy.com/wp-json/wplms/v1/blog/';
Future<List> fetchWpPosts() async {
  final blogPageResponse = await http.get(
      blogPageUrl,
      headers: {"accept": "application/json"});
      var conversionDatajson = jsonDecode(blogPageResponse.body);
      //print(conversionDatajson);
      return conversionDatajson;
}
