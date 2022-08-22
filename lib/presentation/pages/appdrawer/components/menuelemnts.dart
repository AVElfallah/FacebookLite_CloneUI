import 'package:fblite_clone/presentation/widgets/menu_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

class FBMenuElments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.watch<AppSettingsBloc>().isDarkTheme
          ? Colors.black
          : Colors.black12,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 4, 5),
            child: Column(
              children: [
                FBMenuItem(
                    title: 'Facebook Page 1',
                    image: AssetImage('assets/img/page1.png'),
                    onPress: () => print('page 1')),
                FBMenuItem(
                  title: 'Facebook Page 2',
                  image: AssetImage('assets/img/page2.png'),
                  onPress: () {
                    print('page 2');
                  },
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  height: 15,
                ),
                FBMenuItem(
                  title: 'Live Videos',
                  icon: Icon(
                    FontAwesomeIcons.video,
                    color: Colors.red.shade900,
                    size: 27,
                  ),
                  onPress: () {
                    print('Live Videos');
                  },
                ),
                FBMenuItem(
                  title: 'Messages',
                  icon: Icon(
                    FontAwesomeIcons.facebookMessenger,
                    size: 27,
                    color: Colors.indigo.shade500,
                  ),
                  onPress: () {
                    print('Messages');
                  },
                ),
                FBMenuItem(
                  title: 'Groups',
                  icon: Icon(
                    FontAwesomeIcons.users,
                    color: Colors.blue,
                    size: 27,
                  ),
                  onPress: () {
                    print('groups');
                  },
                ),
                FBMenuItem(
                  title: 'Event',
                  icon: Icon(
                    FontAwesomeIcons.calendarDays,
                    color: Colors.cyan,
                    size: 27,
                  ),
                  onPress: () {
                    print('Market function');
                  },
                ),
                FBMenuItem(
                  title: 'Friends',
                  icon: Icon(
                    FontAwesomeIcons.userGroup,
                    color: Colors.amber.shade300,
                    size: 27,
                  ),
                  onPress: () {
                    print('groups');
                  },
                ),
                FBMenuItem(
                  title: 'Dark Theme ',
                  icon: Icon(
                    FontAwesomeIcons.moon,
                    size: 27,
                  ),
                  onPress: () {},
                  darkThemeSwitch: Switch(
                      value: context.watch<AppSettingsBloc>().isDarkTheme,
                      onChanged: (bool? val) {
                        AppSettingsBloc.get(context).add(ChangeThemeEvent());
                      }),
                ),
                FBMenuItem(
                  title: 'Marketplace',
                  icon: Icon(
                    FontAwesomeIcons.store,
                    color: Colors.pinkAccent.shade700,
                    size: 27,
                  ),
                  onPress: () {
                    print('Market function');
                  },
                ),
                FBMenuItem(
                  title: 'Pages',
                  icon: Icon(
                    FontAwesomeIcons.solidFlag,
                    color: Colors.amber.shade900,
                    size: 27,
                  ),
                  onPress: () {
                    print('Pages function');
                  },
                ),
                FBMenuItem(
                  title: 'Saved',
                  icon: Icon(
                    FontAwesomeIcons.solidBookmark,
                    color: Colors.purple,
                    size: 27,
                  ),
                  onPress: () {
                    print('Saved function');
                  },
                ),
                FBMenuItem(
                  title: 'Memories',
                  icon: Icon(
                    FontAwesomeIcons.clockRotateLeft,
                    color: Colors.green.shade400,
                    size: 27,
                  ),
                  onPress: () {
                    print('Memories function');
                  },
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  height: 15,
                ),
                FBMenuItem(
                  title: 'Settings',
                  icon: Icon(
                    FontAwesomeIcons.gear,
                    color: Colors.deepOrange,
                    size: 27,
                  ),
                  onPress: () {
                    print('Settings function');
                  },
                ),
                FBMenuItem(
                  title: 'Privacy Shortcuts',
                  icon: Icon(
                    FontAwesomeIcons.userGear,
                    color: Colors.blueGrey.shade300,
                    size: 27,
                  ),
                  onPress: () {
                    print('Privacy function');
                  },
                ),
                FBMenuItem(
                  title: 'Language',
                  icon: Icon(
                    FontAwesomeIcons.language,
                    color: Colors.lightBlue,
                    size: 27,
                  ),
                  onPress: () {
                    print('Language function');
                  },
                ),
                FBMenuItem(
                  title: 'help',
                  icon: Icon(
                    FontAwesomeIcons.circleQuestion,
                    color: Colors.lime.shade900,
                    size: 27,
                  ),
                  onPress: () {
                    print('Help function');
                  },
                ),
                FBMenuItem(
                  title: 'About',
                  icon: Icon(
                    FontAwesomeIcons.book,
                    color: Colors.teal,
                    size: 27,
                  ),
                  onPress: () {
                    print('About function');
                  },
                ),
                FBMenuItem(
                  title: 'Log Out',
                  icon: Icon(
                    FontAwesomeIcons.doorOpen,
                    size: 27,
                  ),
                  onPress: () {
                    print('Memories function');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
