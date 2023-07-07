import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/home-screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash=screen';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          provider.themeMode == ThemeMode.light
              ? 'assets/images/splash-screen.png'
              : 'assets/images/dark-splash-screen.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
