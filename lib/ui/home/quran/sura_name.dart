import 'package:flutter/material.dart';
import 'package:islami/ui/sura_details/sura_details.dart';

class SuraName extends StatelessWidget {
  String title;
  int index;

  SuraName(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsScreenArgs(title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
