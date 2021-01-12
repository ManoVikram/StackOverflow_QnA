import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/topbanner.dart';
import '../widgets/questionsList.dart';
import '../models/bloc/questions_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final questionsBloc = BlocProvider.of<QuestionsBloc>(context);
    questionsBloc.add(const FetchQuestions());
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
