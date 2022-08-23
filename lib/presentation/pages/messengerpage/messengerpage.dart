import 'package:fblite_clone/UI_test/testingmessenger.dart';
import 'package:fblite_clone/data/localizations/app_localization.dart';
import 'package:fblite_clone/presentation/widgets/messenger_circular_friend_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          elevation: 0,
          title: Text(
            getLang(context, 'messages'),
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: context.watch<AppSettingsBloc>().isDarkTheme
                  ? Colors.white
                  : Colors.blue,
            ),
          ),
          actions: const [
            Icon(FontAwesomeIcons.gear),
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.magnifyingGlass),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    left: 12,
                    right: 12,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.shade700,
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: MessengerRandomTest.getListOfUsers(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (_, i) => ListTile(
                    leading: /* CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/img/test${i % 6 != 0 ? i % 6 : 1}.png',
                      ),
                    ), */
                        FBMessengerCircularFriendWidget(
                      radius: 100,
                      friendImgURI:
                          'assets/img/test${i % 6 != 0 ? i % 6 : 1}.png',
                      isOnline: i % 2 == 0,
                      isHaveStory: i % 3 == 0,
                    ),
                    title: Text(
                      'User ${i + 1}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: context.watch<AppSettingsBloc>().isDarkTheme
                            ? Colors.white
                            : Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      'Message  ${i + 1}${i + 1}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: context.watch<AppSettingsBloc>().isDarkTheme
                            ? Colors.white60
                            : Colors.grey.shade700,
                      ),
                    ),
                    trailing: Icon(
                      FontAwesomeIcons.ellipsis,
                      color: context.watch<AppSettingsBloc>().isDarkTheme
                          ? Colors.white
                          : Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
