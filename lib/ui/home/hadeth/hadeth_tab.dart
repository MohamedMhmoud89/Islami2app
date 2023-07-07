import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/home/hadeth/hadeth.dart';
import 'package:islami/ui/home/hadeth/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) readHadethFile();
    return Column(
      children: [
        Expanded(
            flex: 1, child: Image.asset('assets/images/logohadethtab.png')),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).canvasColor,
        ),
        Text(
          AppLocalizations.of(context)!.el_ahadeth,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).canvasColor,
        ),
        Expanded(
            flex: 3,
            child: Container(
              child: ListView.separated(
                itemBuilder: (buildContext, index) {
                  return HadethTitle(allHadethList[index]);
                },
                itemCount: allHadethList.length,
                separatorBuilder: (buildContext, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    width: double.infinity,
                    height: 1,
                    color: Theme.of(context).canvasColor,
                  );
                },
              ),
            ))
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> splittedContent = fileContent.split('#');
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
