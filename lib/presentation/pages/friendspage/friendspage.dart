import 'package:fblite_clone/UI_test/testingfrienddata.dart';
import 'package:fblite_clone/data/localizations/app_localization.dart';
import 'package:fblite_clone/data/models/colors/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppUsedColors.isDark = context.watch<AppSettingsBloc>().isDarkTheme;
    final colors = AppUsedColors();
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          elevation: 0,
          title: Text(
            getLang(context, 'friends'),
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: colors.appBarFontColor,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
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
                      getLang(context, "suggestions"),
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Chip(
                        label: Text(
                      getLang(context, "all_friends"),
                      style: const TextStyle(
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
                    getLang(context, "friend_requests"),
                    style: const TextStyle(
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
                      getLang(context, 'see_all'),
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
    );
  }
}
