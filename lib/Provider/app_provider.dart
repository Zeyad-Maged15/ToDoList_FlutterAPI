import 'package:flutter/material.dart';
import 'package:newsapp/Models/app_model.dart';
import '../Services/app_service.dart';
class app_provider extends ChangeNotifier
{
  List<app_model> data = [];
  app_service service = app_service();
  Future<void> get() async {
    data = await service.getnews();
    notifyListeners();
  }
}