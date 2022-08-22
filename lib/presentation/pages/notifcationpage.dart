import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:fblite_clone/presentation/colors/colors_values.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatelessWidget {
  final List notifications = [
    'Notification 1',
    'Notification 2',
    'Notification 3',
    'Notification 4',
    'Notification 5',
    'Notification 6'
  ];
  @override
  Widget build(BuildContext context) {
    final isDark = AppSettingsBloc.get(context).isDarkTheme;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 27,
              color: ColorsValues(
                isDark,
              ).mainFontColor(),
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
              ),
            )
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: ColorsValues(isDark).appMostUsedColor(),
                  side: BorderSide(
                    color: isDark
                        ? Colors.blueGrey.shade800
                        : Colors.blueGrey.shade400,
                    width: 4,
                  ),
                ),
                child: Text(
                  'Mark all as read',
                  style: TextStyle(
                    color: isDark ? Colors.blue.shade400 : Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.blueGrey.shade800,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.69,
                child: ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (_, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/test${i + 1}.png'),
                    ),
                    title: Text(
                      notifications[i],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    ),
                    trailing: Text(
                      '1 hour ago',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}