import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './screens/homeScreen.dart';
import './models/bloc/questions_bloc.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionsBloc(),
      child: MaterialApp(
        title: "StackOverflow",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: StackOverflow(),
      ),
    );
  }
}

class StackOverflow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

void main() => runApp(MyApp());
