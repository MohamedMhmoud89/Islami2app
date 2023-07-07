import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami/ui/home/quran/quran_tab.dart';
import 'package:islami/ui/home/radio/radio_tab.dart';
import 'package:islami/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/ui/settings/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.themeMode == ThemeMode.light
                  ? 'assets/images/main-background.png'
                  : 'assets/images/dark-main-background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.isalmi)),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTabIndex,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                  label: AppLocalizations.of(context)!.el_ahadeth),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: AppLocalizations.of(context)!.tasbeh),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
              ),
            ]),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuraanTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
