import 'dart:convert';
import 'package:e_mitra/models/newsInfo.dart';
import 'package:e_mitra/path/strings.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
class API_Manager{


  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel = null;

    try {
      var response = await client.get(Strings.new_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch(Exception){
      return newsModel;
    }
    return newsModel;
    }

}