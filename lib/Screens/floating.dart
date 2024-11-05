import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/Provider/todo_provider.dart';

class floating extends StatefulWidget {
  const floating({super.key});

  @override
  State<floating> createState() => _floatingState();
}

class _floatingState extends State<floating> {
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<todo_provider>(context);
    var text = "";
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(fontSize: 30, color: Colors.cyan),
          ),
          Container(
            width: 300,
            child: TextField(
              onChanged: (context)
              {
                text = context;
              },
            ),
          ),
          ElevatedButton(
              onPressed: (){
                if(text.trim() != "")
                  {
                    p.add(text: text);
                  }
                Navigator.pop(context);
              },
              child: Text(
                'Add'
              ),
          ),
        ],
      ),
    );
  }
}
