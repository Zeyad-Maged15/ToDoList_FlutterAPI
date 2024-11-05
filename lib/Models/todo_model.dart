class todo_model
{
  List<dynamic> result;
  int total;
  todo_model({required this.result, required this.total});

  factory todo_model.fromJson(Map<String, dynamic> json)
  {
    return todo_model(result: json["todos"], total: json["total"]);
  }
}