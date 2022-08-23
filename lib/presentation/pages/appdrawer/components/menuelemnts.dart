import 'package:fblite_clone/presentation/widgets/menu_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import '../../../../data/localizations/app_localization.dart';

class FBMenuElments extends StatelessWidget {
  const FBMenuElments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.watch<AppSettingsBloc>().isDarkTheme
          ? Colors.black
          : Colors.black12,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 5),
            child: Column(
              children: [
                FBMenuItem(
                    title: 'Facebook Page 1',
                    image: const AssetImage('assets/img/page1.png'),
                    onPress: () {}),
                FBMenuItem(
                  title: 'Facebook Page 2',
                  image: const AssetImage('assets/img/page2.png'),
                  onPress: () {},
                ),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  height: 50,
                ),
                FBMenuItem(
                  title: getLang(context, 'live_video'),
                  icon: Icon(
                    FontAwesomeIcons.video,
                    color: Colors.red.shade900,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'messages'),
                  icon: Icon(
                    FontAwesomeIcons.facebookMessenger,
                    size: 27,
                    color: Colors.indigo.shade500,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'groups'),
                  icon: const Icon(
                    FontAwesomeIcons.users,
                    color: Colors.blue,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'event'),
                  icon: const Icon(
                    FontAwesomeIcons.calendarDays,
                    color: Colors.cyan,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'friends'),
                  icon: Icon(
                    FontAwesomeIcons.userGroup,
                    color: Colors.amber.shade300,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'dark_theme'),
                  icon: const Icon(
                    FontAwesomeIcons.moon,
                    size: 27,
                  ),
                  onPress: () {},
                  darkThemeSwitch: Switch(
                    value: context.watch<AppSettingsBloc>().isDarkTheme,
                    onChanged: (bool? val) {
                      AppSettingsBloc.get(context).add(ChangeThemeEvent());
                    },
                  ),
                ),
                FBMenuItem(
                  title: getLang(context, "market"),
                  icon: Icon(
                    FontAwesomeIcons.store,
                    color: Colors.pinkAccent.shade700,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'pages'),
                  icon: Icon(
                    FontAwesomeIcons.solidFlag,
                    color: Colors.amber.shade900,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'saved'),
                  icon: const Icon(
                    FontAwesomeIcons.solidBookmark,
                    color: Colors.purple,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'memories'),
                  icon: Icon(
                    FontAwesomeIcons.clockRotateLeft,
                    color: Colors.green.shade400,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  height: 60,
                ),
                FBMenuItem(
                  title: getLang(context, 'settings'),
                  icon: const Icon(
                    FontAwesomeIcons.gear,
                    color: Colors.deepOrange,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'privacy_shortcuts'),
                  icon: Icon(
                    FontAwesomeIcons.userGear,
                    color: Colors.blueGrey.shade300,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'language'),
                  icon: const Icon(
                    FontAwesomeIcons.language,
                    color: Colors.lightBlue,
                    size: 27,
                  ),
                  onPress: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            title: Text(getLang(context, 'change_lang')),
                            titlePadding: const EdgeInsets.all(10),
                            content: DropdownButton<String>(
                                borderRadius: BorderRadius.circular(20),
                                icon: const Icon(FontAwesomeIcons.language),
                                value: AppSettingsBloc.get(context)
                                    .appLocale
                                    .languageCode,
                                items: const [
                                  DropdownMenuItem(
                                    value: 'en',
                                    child: Text(
                                      "English",
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'ar',
                                    child: Text(
                                      "اللغة العربية",
                                    ),
                                  ),
                                ],
                                onChanged: (val) {
                                  AppSettingsBloc.get(context).add(
                                    ChangeAppLanguageEvent(
                                      Locale(val!),
                                    ),
                                  );
                                }),
                          );
                        }));
                  },
                ),
                FBMenuItem(
                  title: getLang(context, 'help'),
                  icon: Icon(
                    FontAwesomeIcons.circleQuestion,
                    color: Colors.lime.shade900,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'about'),
                  icon: const Icon(
                    FontAwesomeIcons.book,
                    color: Colors.teal,
                    size: 27,
                  ),
                  onPress: () {},
                ),
                FBMenuItem(
                  title: getLang(context, 'logout'),
                  icon: const Icon(
                    FontAwesomeIcons.doorOpen,
                    size: 27,
                  ),
                  onPress: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
