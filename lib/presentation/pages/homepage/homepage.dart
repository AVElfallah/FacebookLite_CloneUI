import 'package:fblite_clone/UI_test/testingpostdata.dart';
import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:fblite_clone/data/localizations/app_localization.dart';

import 'package:fblite_clone/presentation/pages/homepage/components/postcreation.dart';
import 'package:fblite_clone/presentation/pages/homepage/components/postsomponents/postbuilder.dart';
import 'package:fblite_clone/presentation/pages/homepage/components/storycomponents/storyscroll.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/models/colors/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppUsedColors.isDark = AppSettingsBloc.get(context).isDarkTheme;
    final colors = AppUsedColors();
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          //  expandedHeight: 200,
          pinned: true,
          actions: [
            const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ],
          title: Text(
            getLang(context, 'app_name'),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 29,
              color: colors.appBarFontColor,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate.fixed([
          const PostCreationCard(),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: StoryScrollShow(),
          ),
          Column(
            children:
                PostBuilder(fbPostsList: fbPosts).convertToListOfWidgets(),
          )
        ])),
      ],
    );
  }
}
