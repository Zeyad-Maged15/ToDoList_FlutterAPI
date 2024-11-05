import 'dart:convert';

import 'package:dio/dio.dart';
import '../Models/app_model.dart';

class app_service
{
  Dio dio = Dio();
   Future<List<app_model>> getnews() async{
    final respone = await dio.get('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=39c5f0038d274b86ac6cbe948b7e1ccf');
    List<dynamic> data = respone.data["articles"];
    return data.map((json) => app_model.fromJson(json)).toList();
  }
}