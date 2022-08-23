import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:fblite_clone/data/localizations/app_localization.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/models/colors/app_colors.dart';

class MarketPlacePage extends StatelessWidget {
  final List products = [
    'product 1',
    'product 2',
    'product 3',
    'product 4',
    'product 5',
    'product 6',
  ];

  MarketPlacePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppUsedColors.isDark = AppSettingsBloc.get(context).isDarkTheme;
    final colors = AppUsedColors();
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        elevation: 0,
        pinned: true,
        title: Text(
          getLang(context, 'market'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    backgroundColor: colors.chipColor,
                    label: const Icon(
                      FontAwesomeIcons.user,
                      size: 24,
                    ),
                  ),
                  Chip(
                    backgroundColor: colors.chipColor,
                    label: Text(
                      getLang(context, 'inbox'),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Chip(
                    backgroundColor: colors.chipColor,
                    label: Text(
                      getLang(context, 'sell'),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Chip(
                    backgroundColor: colors.chipColor,
                    label: Text(
                      getLang(context, 'categories'),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Chip(
                    backgroundColor: colors.chipColor,
                    label: Text(
                      getLang(context, 'search'),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Theme.of(context).selectedRowColor,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    getLang(context, 'today_picks'),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.locationDot),
                    label: const Text(
                      'Mansoura - 60 km',
                    ),
                    style: TextButton.styleFrom(
                      primary: colors.buttonTextColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.59,
              child: GridView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridTile(
                      footer: Text(
                        products[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          backgroundColor: colors.whiteToBlackLight,
                          fontSize: 18,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/img/product${i + 1}.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 1,
                            child: Chip(
                              backgroundColor: colors.chipColor,
                              avatar: Icon(
                                FontAwesomeIcons.dollarSign,
                                color: colors.whiteToBlack,
                              ),
                              label: Text(
                                '100',
                                style: TextStyle(
                                  color: colors.whiteToBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
