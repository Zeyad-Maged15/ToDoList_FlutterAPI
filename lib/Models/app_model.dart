import 'package:flutter/material.dart';

class app_model
{
  final String title;
  final String description;
  final String urlofimage;
  final String content;

  app_model({
    required this.title,
    required this.content,
    required this.description,
    required this.urlofimage
  });
  factory app_model.fromJson(Map<String, dynamic> json)
  {
    return app_model(title: json["title"], content: json["content"], description: json["description"], urlofimage: json["urlToImage"]);
  }
}