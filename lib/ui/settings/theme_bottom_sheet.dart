import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.enableLightMode();
              },
              child: provider.themeMode == ThemeMode.light
                  ? getSelectedWidget(
                      '${AppLocalizations.of(context)?.light}', context)
                  : getUnSelectedWidget(
                      '${AppLocalizations.of(context)?.light}', context)),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.enableDarkMode();
            },
            child: provider.themeMode == ThemeMode.dark
                ? getSelectedWidget(
                    '${AppLocalizations.of(context)?.dark}', context)
                : getUnSelectedWidget(
                    '${AppLocalizations.of(context)?.dark}', context),
          ),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Theme.of(context).canvasColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).canvasColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String title, BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
