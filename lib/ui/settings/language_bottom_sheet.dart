import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
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
              provider.changeLanguageCode("en");
            },
            child: provider.languageCode == 'en'
                ? getSelectedWidget(
                    "${AppLocalizations.of(context)!.english}", context)
                : getUnSelectedWidget(
                    "${AppLocalizations.of(context)!.english}", context),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguageCode("ar");
            },
            child: provider.languageCode == 'ar'
                ? getSelectedWidget(
                    "${AppLocalizations.of(context)!.arabic}", context)
                : getUnSelectedWidget(
                    "${AppLocalizations.of(context)!.arabic}", context),
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
