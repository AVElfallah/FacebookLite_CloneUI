import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/localizations/app_localization.dart';

class PostCreationCard extends StatelessWidget {
  const PostCreationCard({Key? key}) : super(key: key);

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
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/img/prof.png'),
                radius: 27,
              ),
              title: Row(children: [
                const SizedBox(
                  height: 35,
                  child: VerticalDivider(
                    thickness: 1,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  getLang(context, 'post_update'),
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),
                )
              ]),
              trailing: const Icon(
                FontAwesomeIcons.images,
                size: 27,
              ),
            ),
            const Divider(
              color: Colors.black,
              endIndent: 10,
              indent: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.lightBlue,
                    textStyle: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.penToSquare,
                  ),
                  label: Text(
                    getLang(context, 'text'),
                  ),
                ),
                const SizedBox(
                  height: 35,
                  child: VerticalDivider(
                    thickness: 1,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.redAccent,
                    textStyle: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.video,
                  ),
                  label: Text(
                    getLang(context, 'live_video'),
                  ),
                ),
                const SizedBox(
                  height: 35,
                  child: VerticalDivider(
                    thickness: 1,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.green,
                    textStyle: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.locationArrow,
                  ),
                  label: Text(
                    getLang(context, 'location'),
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
