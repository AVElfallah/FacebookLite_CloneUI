import 'package:flutter/cupertino.dart';

import '../presentation/widgets/storycard_widget.dart';

List<Widget> get testingStoryData {
  _testingStoryData.shuffle();
  return _testingStoryData;
}

List<Widget> _testingStoryData = <Widget>[
  StoryCardWidget(
    name: 'Cat on the tree',
    lastStoryImage: AssetImage('assets/img/page1.png'),
    storyNumber: 10,
  ),
  StoryCardWidget(
    name: 'Rat',
    lastStoryImage: AssetImage('assets/img/background.png'),
    storyNumber: 15,
  ),
  StoryCardWidget(
    name: 'Mat',
    lastStoryImage: AssetImage('assets/img/test1.png'),
    storyNumber: 3,
  ),
  StoryCardWidget(
    name: 'Bat',
    lastStoryImage: AssetImage('assets/img/test2.png'),
    storyNumber: 1,
  ),
  StoryCardWidget(
    name: 'Alfa Beta Gamaa',
    lastStoryImage: AssetImage('assets/img/test3.png'),
    storyNumber: 38,
  ),
  StoryCardWidget(
    name: 'Mo Boffa',
    lastStoryImage: AssetImage('assets/img/test4.png'),
    storyNumber: 12,
  ),
  StoryCardWidget(
    name: 'Batta Baldy ',
    lastStoryImage: AssetImage('assets/img/test5.png'),
    storyNumber: 6,
  ),
  StoryCardWidget(
    name: 'Mohamed Ali ',
    lastStoryImage: AssetImage('assets/img/test6.jpg'),
    storyNumber: 13,
  ),
];
