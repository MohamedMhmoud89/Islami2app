import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int sebhaCounter = 0;
  int tasbehatIndex = 0;
  double angle = 0;
  List<String> tasbehat = [
    'سبحان الله',
    'الحمدلله',
    'الله اكبر',
    'لا إله إلا الله'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var provider = Provider.of<SettingProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(left: width * 0.1),
                child: Image.asset(
                  provider.themeMode == ThemeMode.light
                      ? 'assets/images/light_head_of_seb7a.png'
                      : 'assets/images/dark_head_of_seb7a.png',
                  height: height * 0.14,
                  width: width * 0.2,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.1078),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: () {
                      tasbeh();
                    },
                    child: Image.asset(
                      provider.themeMode == ThemeMode.light
                          ? 'assets/images/light_body_of_seb7a.png'
                          : 'assets/images/dark_body_of_seb7a.png',
                      height: height * 0.24,
                      width: width * 0.52,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Text(
          'عدد التسبيحات',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontFamily: 'Decotype'),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.01),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(25)),
          child: Container(
            margin: EdgeInsets.all(width * 0.05),
            child: Text(
              sebhaCounter.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                tasbeh();
              },
              child: Text(
                tasbehat[tasbehatIndex],
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Decotype',
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).canvasColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    tasbehatIndex = 0;
                    sebhaCounter = 0;
                  });
                },
                icon: Icon(
                  Icons.autorenew_rounded,
                ),
                iconSize: 30,
                color: Theme.of(context).canvasColor)
          ],
        ),
      ],
    );
  }

  void tasbeh() {
    if (sebhaCounter == 32) {
      sebhaCounter = 0;
      tasbehatIndex++;
    } else {
      sebhaCounter++;
    }
    ;
    if (tasbehatIndex == 4) {
      tasbehatIndex = 0;
    }
    angle += 90;
    setState(() {});
  }
}
