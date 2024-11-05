import 'package:dio/dio.dart';

import '../Models/todo_model.dart';

class todo_service
{
  static final Dio dio = Dio();
  static Map postData = {'todo': '', 'completed': false, 'userId': 13};

  static Future<todo_model> getTodos() async{
      final response = await dio.get('https://dummyjson.com/todos/user/13');
      return todo_model.fromJson(response.data);
  }
  static Future<void> addTask({required String newTask}) async
  {
    postData['todo'] = newTask;
    await dio.post('https://dummyjson.com/todos/add',
      data: postData
    );
  }
}