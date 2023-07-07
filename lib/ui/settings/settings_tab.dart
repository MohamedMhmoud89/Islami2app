import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/settings/language_bottom_sheet.dart';
import 'package:islami/ui/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontFamily: 'Decotype')),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Theme.of(context).canvasColor, width: 1),
              ),
              child: Text(
                provider.isDarkEnable()
                    ? '${AppLocalizations.of(context)!.dark}'
                    : '${AppLocalizations.of(context)!.light}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: 'Decotype'),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Theme.of(context).canvasColor, width: 1),
              ),
              child: Text(
                provider.isLngCodeEN()
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => LanguageBottomSheet());
  }
}
