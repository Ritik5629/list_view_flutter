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
      body: Padding(
        padding: EdgeInsets.all(20), // whole page padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: names
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(bottom: 12), // space between names
                  padding: EdgeInsets.all(10), // inside padding of each text
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
