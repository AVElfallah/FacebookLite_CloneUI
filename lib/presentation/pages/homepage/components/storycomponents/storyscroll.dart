import 'package:fblite_clone/UI_test/testingstorydata.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

class StoryScrollShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isDarkColors = [
      Colors.grey.shade800,
      Colors.blueGrey,
    ];
    var isLightColors = [
      Colors.white12,
      Colors.blueGrey,
    ];

    return Container(
      height: 225,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.watch<AppSettingsBloc>().isDarkTheme
              ? Colors.white
              : Colors.black,
          width: .15,
        ),
        gradient: LinearGradient(
          colors: context.watch<AppSettingsBloc>().isDarkTheme
              ? isDarkColors
              : isLightColors,
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(3),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: testingStoryData,
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 10,
                  12,
                ),
              ),
              onPressed: () {},
              label: Text(
                'View All Stories',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              icon: Icon(
                FontAwesomeIcons.bookOpen,
                size: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
