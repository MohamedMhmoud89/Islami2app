import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset('assets/images/logoradio.png'),
          flex: 5,
        ),
        Expanded(
          child: Column(
            children: [
              Text('إذاعة القرآن الكريم'),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.fast_rewind),
                    iconSize: 30,
                    color: Theme.of(context).canvasColor,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                      iconSize: 45,
                      color: Theme.of(context).canvasColor),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.fast_forward),
                      iconSize: 30,
                      color: Theme.of(context).canvasColor),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '${AppLocalizations.of(context)?.soon}',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 30, fontFamily: 'Decotype'),
              ),
            ],
          ),
          flex: 4,
        )
      ],
    );
  }
}
