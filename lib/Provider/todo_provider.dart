import 'package:flutter/cupertino.dart';

import '../Models/todo_model.dart';
import '../Services/todo_service.dart';

class todo_provider extends ChangeNotifier {
  todo_model? data;
  Future<void> get() async {
    data = await todo_service.getTodos();
    notifyListeners();
  }

  Future<void> add({required String text}) async {
    await todo_service.addTask(newTask: text);
    data?.result.add({"todo": text});
    data?.total += 1;
    notifyListeners();
  }
}
