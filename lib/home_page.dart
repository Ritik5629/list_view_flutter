import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Ritik Rana",
      "Sunil Nagarkoti",
      "Ankush Sharma",
      "Dikshant",
    ];

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Home Page"),
      ),

      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              names[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          );
        },
      ),
    );
  }
}
