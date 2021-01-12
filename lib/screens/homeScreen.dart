import 'package:flutter/material.dart';

import '../widgets/topbanner.dart';
import '../widgets/questionsList.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBanner(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "All Questions",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          QuestionsList(),
        ],
      ),
    );
  }
}
