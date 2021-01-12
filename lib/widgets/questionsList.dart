import 'package:flutter/material.dart';

class QuestionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (contxt, index) => ListTile(
          leading: CircleAvatar(
            radius: 25,
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueGrey,
            child: Text("7"),
          ),
          title: Text("Mano Vikram"),
          subtitle: Row(
            children: [
              Chip(
                label: Text(
                  "Flutter",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.indigoAccent,
              ),
            ],
          ),
          trailing: Chip(
            label: Text(
              "18 Views",
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
        itemCount: 10,
      ),
    );
  }
}
