import 'package:flutter/cupertino.dart';

import '../data/models/post_duration_model.dart';
import '../presentation/widgets/friend_request_widget.dart';

List<Widget> get friendsTestDataView {
  _friendsTestDataView.shuffle();
  return _friendsTestDataView;
}

List<Widget> _friendsTestDataView = <Widget>[
  FBFriendRequestWidget(
    accountName: 'Mo Boffa',
    accountPhoto: const AssetImage('assets/img/page2.png'),
    multualFrindsNumber: 25,
    friendsPhotos: const [
      AssetImage('assets/img/page1.png'),
      AssetImage('assets/img/prof.png'),
      AssetImage('assets/img/page1.png')
    ],
    requestSentDuration: FBAppDuration(day: 25, minute: 60, year: 0, month: 0),
  ),
  FBFriendRequestWidget(
    accountName: 'Metin2 hero',
    accountPhoto: const AssetImage('assets/img/test5.png'),
    multualFrindsNumber: 4,
    friendsPhotos: const [
      AssetImage('assets/img/test1.png'),
      AssetImage('assets/img/test3.png'),
      AssetImage('assets/img/test2.png')
    ],
    requestSentDuration: FBAppDuration(day: 0, minute: 60, year: 0, month: 2),
  ),
  FBFriendRequestWidget(
    accountName: 'Meow cat ',
    accountPhoto: const AssetImage('assets/img/test1.png'),
    multualFrindsNumber: 44,
    friendsPhotos: const [
      AssetImage('assets/img/test5.png'),
      AssetImage('assets/img/test6.jpg'),
      AssetImage('assets/img/test4.png')
    ],
    requestSentDuration: FBAppDuration(day: 0, minute: 60, year: 0, month: 0),
  ),
  FBFriendRequestWidget(
    accountName: 'LoL :( ',
    accountPhoto: const AssetImage('assets/img/test2.png'),
    multualFrindsNumber: 35,
    friendsPhotos: const [
      AssetImage('assets/img/test3.png'),
      AssetImage('assets/img/test6.jpg'),
      AssetImage('assets/img/test5.png')
    ],
    requestSentDuration: FBAppDuration(day: 0, minute: 60, year: 0, month: 0),
  ),
  FBFriendRequestWidget(
    accountName: 'Wow',
    accountPhoto: const AssetImage('assets/img/test3.png'),
    multualFrindsNumber: 12,
    friendsPhotos: const [
      AssetImage('assets/img/test2.png'),
      AssetImage('assets/img/test5.png'),
      AssetImage('assets/img/prof.png')
    ],
    requestSentDuration: FBAppDuration(day: 0, minute: 60, year: 0, month: 21),
  ),
  FBFriendRequestWidget(
    accountName: 'no more',
    accountPhoto: const AssetImage('assets/img/test4.png'),
    multualFrindsNumber: 5,
    friendsPhotos: const [
      AssetImage('assets/img/test4.png'),
      AssetImage('assets/img/test1.png'),
      AssetImage('assets/img/page2.png')
    ],
    requestSentDuration: FBAppDuration(day: 88, minute: 60, year: 0, month: 0),
  ),
  FBFriendRequestWidget(
    accountName: 'F Word',
    accountPhoto: const AssetImage('assets/img/page1.png'),
    multualFrindsNumber: 25,
    friendsPhotos: const [
      AssetImage('assets/img/page1.png'),
      AssetImage('assets/img/test5.png'),
      AssetImage('assets/img/test3.png')
    ],
    requestSentDuration: FBAppDuration(day: 304, minute: 60, year: 0, month: 0),
  ),
  FBFriendRequestWidget(
    accountName: 'Beta Acc',
    accountPhoto: const AssetImage('assets/img/test6.jpg'),
    multualFrindsNumber: 250,
    friendsPhotos: const [
      AssetImage('assets/img/test1.png'),
      AssetImage('assets/img/test4.png'),
      AssetImage('assets/img/test2.png')
    ],
    requestSentDuration: FBAppDuration(day: 3, minute: 0, year: 0, month: 0),
  ),
];
