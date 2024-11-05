import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/app_provider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<app_provider>(context);
    p.get();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'News App',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Consumer<app_provider>(
              builder: (context, value, child) {
                if (value.data.isEmpty) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(value.data[index].title),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
