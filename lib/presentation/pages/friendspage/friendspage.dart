import 'package:fblite_clone/UI_test/testingfrienddata.dart';
import 'package:fblite_clone/data/models/colors/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppUsedColors.isDark = context.watch<AppSettingsBloc>().isDarkTheme;
    final colors = AppUsedColors();
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0,
            title: Text(
              'Friends ',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w500,
                color: colors.appBarFontColor,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Chip(
                      label: Text(
                        'Suggestions',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Chip(
                          label: Text(
                        'All Friends',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Friend Requests',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        onSurface: Colors.blue,
                      ),
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: colors.buttonTextColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: friendsTestDataView,
              )
            ]),
          )
        ],
      ),
    );
  }
}
