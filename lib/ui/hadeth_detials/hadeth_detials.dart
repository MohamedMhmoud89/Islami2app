import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';
import 'package:provider/provider.dart';

class HadethDetials extends StatelessWidget {
  static const String routeName = 'hadeth_detials';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light
                  ? 'assets/images/main-background.png'
                  : 'assets/images/dark-main-background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
                child: Card(
              child: SingleChildScrollView(
                child: Text(
                  args.content,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
