import 'package:fblite_clone/UI_test/testingpostdata.dart';
import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:fblite_clone/presentation/colors/colors_values.dart';
import 'package:fblite_clone/presentation/pages/homepage/components/postcreation.dart';
import 'package:fblite_clone/presentation/pages/homepage/components/postsomponents/postbuilder.dart';
import 'package:fblite_clone/presentation/pages/homepage/components/storycomponents/storyscroll.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          //  expandedHeight: 200,
          pinned: true,
          actions: [
            Icon(
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
            'Facebook',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 29,
              color: ColorsValues(AppSettingsBloc.get(context).isDarkTheme)
                  .mainFontColor(),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate.fixed([
          PostCreationCard(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
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
