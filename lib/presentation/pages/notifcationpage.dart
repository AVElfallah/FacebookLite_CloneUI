import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:fblite_clone/data/localizations/app_localization.dart';
import 'package:fblite_clone/data/models/post_duration_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/models/colors/app_colors.dart';

class NotificationPage extends StatelessWidget {
  final List notifications = [
    'Notification 1',
    'Notification 2',
    'Notification 3',
    'Notification 4',
    'Notification 5',
    'Notification 6'
  ];

  NotificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppUsedColors.isDark = context.watch<AppSettingsBloc>().isDarkTheme;
    final colors = AppUsedColors();
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text(
            getLang(context, 'notifications'),
            style: TextStyle(
              fontSize: 27,
              color: colors.appBarFontColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
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
                  primary: colors.scaffoldBackgroundColor,
                  side: BorderSide(
                    color: colors.elButtonBorder,
                    width: 4,
                  ),
                ),
                child: Text(
                  getLang(context, "mark_all_as_read"),
                  style: TextStyle(
                    color: colors.elButtonTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
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
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    ),
                    trailing: Text(
                      FBAppDuration(
                              minute: 500, year: 0, day: 1, month: i, hour: 10)
                          .toLargeString(context)!,
                      style: const TextStyle(
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
