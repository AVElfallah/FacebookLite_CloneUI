import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:fblite_clone/data/constant/app_theme.dart';
import 'package:fblite_clone/presentation/pages/appdrawer/drawerpage.dart';
import 'package:fblite_clone/presentation/pages/friendspage/friendspage.dart';
import 'package:fblite_clone/presentation/pages/marketplacepage.dart';
import 'package:fblite_clone/presentation/pages/homepage/homepage.dart';
import 'package:fblite_clone/presentation/pages/messengerpage/messengerpage.dart';
import 'package:fblite_clone/presentation/pages/notifcationpage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'data/models/colors/app_colors.dart';

void main() {
  runApp(BlocProvider<AppSettingsBloc>(
      create: (_) => AppSettingsBloc(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      AppSettingsBloc.get(context)
          .add(ChangePageEvent(_pageController.page!.toInt()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var page = AppSettingsBloc.get(context).page;

    AppUsedColors.isDark = AppSettingsBloc.get(context).isDarkTheme;
    final colors = AppUsedColors();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().appLightTheme,
      darkTheme: AppTheme().appDarkTheme,
      themeMode: context.watch<AppSettingsBloc>().appMode,
      title: 'Facebook',
      home: Scaffold(
        backgroundColor: colors.scaffoldBackgroundColor,
        endDrawer: FBDrawer(),
        body: PageView(
          controller: _pageController,
          children: [
            HomePage(),
            FriendsPage(),
            NotificationPage(),
            MarketPlacePage(),
            MessengerPage(),
          ],
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          onTap: (val) {
            AppSettingsBloc.get(
              context,
            ).add(
              ChangePageEvent(
                val,
              ),
            );
            _pageController.animateToPage(
              val,
              duration: Duration(
                milliseconds: 500,
              ),
              curve: Curves.ease,
            );
          },
          activeIndex: page,
          gapLocation: GapLocation.end,
          splashColor: Colors.black,
          inactiveColor: colors.bottomNavBarInactiveColor,
          backgroundColor: colors.widgetsBackgroundColor,
          activeColor: colors.inactiveColorWhenIsMessenger(page),
          rightCornerRadius: 0,
          leftCornerRadius: 0,
          icons: [
            FontAwesomeIcons.house,
            FontAwesomeIcons.userGroup,
            Icons.notifications,
            FontAwesomeIcons.shop,
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: colors.widgetsBackgroundColor,
          foregroundColor: colors.activeColorWhenIsMessenger(
            page,
          ),
          onPressed: () {
            AppSettingsBloc.get(context).add(
              ChangePageEvent(
                4,
              ),
            );
            _pageController.animateToPage(
              4,
              duration: Duration(
                milliseconds: 500,
              ),
              curve: Curves.ease,
            );
          },
          child: Icon(
            FontAwesomeIcons.facebookMessenger,
          ),
        ),
      ),
    );
  }
}
