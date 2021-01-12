import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.35,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.indigo,
              ],
            ),
          ),
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("StackOverflow"),
          centerTitle: true,
        ),
        Positioned(
          top: size.height * 0.15,
          left: size.width * 0.07,
          right: size.width * 0.2,
          child: Text(
            "Hi!! Welcome to StackOverflow questions app.",
            softWrap: true,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
