import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/sura_details/verse_details.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-detials';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var args =
        ModalRoute.of(context)?.settings?.arguments as SuraDetailsScreenArgs;
    if (chapterContent.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light
                  ? 'assets/images/main-background.png'
                  : 'assets/images/dark-main-background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text('${args.index + 1}-${args.title}'),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Card(
                child: ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return VerseDetials(chapterContent[index]);
                    },
                    itemCount: chapterContent.length,
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        width: double.infinity,
                        height: 1,
                        color: Theme.of(context).canvasColor,
                      );
                    }),
              )),
            ],
          )),
    );
  }

  void readFile(int chapterIndex) async {
    String text =
        await rootBundle.loadString('assets/files/${chapterIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
  }
}

class SuraDetailsScreenArgs {
  String title;
  int index;

  SuraDetailsScreenArgs(this.title, this.index);
}
