import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/todo_model.dart';
import '../Provider/todo_provider.dart';
import '../Screens/floating.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<todo_provider>(context);
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.playlist_add_check,
                color: Colors.white,
                size: 45,
              ),
              Text(
                "Today App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "  ${p.data?.total ?? 0} Tasks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Consumer<todo_provider>(builder: (context, value, child) {
              if (value.data == null) {
                value.get();
                return CircularProgressIndicator();
              } else {
                return ListView.builder(
                  itemCount: value.data?.total,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(value.data?.result[index]['todo']),
                    );
                  },
                );
              }
            }
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return floating();
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

todo_model? model;
