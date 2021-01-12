import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/bloc/questions_bloc.dart';

class QuestionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionsBloc, QuestionsState>(
      builder: (context, state) {
        // print(state.questions);
        return Expanded(
          child: ListView.builder(
            itemBuilder: (contxt, index) => ListTile(
              dense: true,
              isThreeLine: true,
              leading: CircleAvatar(
                radius: 25,
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
                child: Text(state.questions[index].voteCount),
              ),
              title: Text(
                state.questions[index].question,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              subtitle: Wrap(
                spacing: 10.0,
                children: state.questions[index].tags
                    .map(
                      (data) => Chip(
                        label: Text(
                          data,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: Colors.indigoAccent,
                      ),
                    )
                    .toList(),
                /* [
                  Chip(
                    label: Text(
                      "Flutter",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.indigoAccent,
                  ),
                ], */
              ),
              trailing: Chip(
                label: Text(
                  state.questions[index].views,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blueGrey,
              ),
            ),
            itemCount: state.questions.length,
          ),
        );
      },
    );
  }
}
