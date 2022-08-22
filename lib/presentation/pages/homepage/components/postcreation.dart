import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class PostCreationCard extends StatelessWidget {
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
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.watch<AppSettingsBloc>().isDarkTheme
                ? Colors.white
                : Colors.black,
            width: .09,
          ),
          gradient: LinearGradient(
            colors: context.watch<AppSettingsBloc>().isDarkTheme
                ? isDarkColors
                : isLightColors,
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 4),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/prof.png'),
                    radius: 27,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Create post fun');
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        child: VerticalDivider(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Post a status update',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .19,
                      ),
                      Container(
                          height: 35,
                          child: VerticalDivider(color: Colors.black)),
                      Icon(FontAwesomeIcons.images),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              endIndent: 10,
              indent: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.lightBlue,
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.penToSquare,
                  ),
                  label: Text(
                    'Text',
                  ),
                ),
                Container(
                  height: 35,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.redAccent,
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.video,
                  ),
                  label: Text(
                    'Live Video',
                  ),
                ),
                Container(
                  height: 35,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.green,
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.locationArrow,
                  ),
                  label: Text(
                    'Location',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
