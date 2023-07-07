import 'package:flutter/material.dart';

class VerseDetials extends StatelessWidget {
  String content;

  VerseDetials(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      alignment: Alignment.center,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
