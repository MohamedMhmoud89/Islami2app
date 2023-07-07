import 'package:flutter/material.dart';
import 'package:islami/ui/hadeth_detials/hadeth_detials.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetials.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
