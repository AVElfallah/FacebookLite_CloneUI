import 'package:flutter/material.dart';

import '../data/models/post_duration_model.dart';
import '../data/models/post_model.dart';

List<FBPost> get fbPosts {
  _fbPosts.shuffle();
  return _fbPosts;
}

List<FBPost> _fbPosts = [
  FBPost(
    accountName: 'Abdulrhman Elfallah',
    accountPhoto: AssetImage('assets/img/page1.png'),
    publishTime: FBLongDuration(year: 0, minute: 0, day: 0, month: 0),
    postRichText: 'Post Text',
    commentsNum: 12,
    likesNum: 5,
    shareNum: 1,
    postPhoto: AssetImage('assets/img/background.png'),
  ),
  FBPost(
    accountName: 'Mo 3gaa',
    accountPhoto: AssetImage('assets/img/page2.png'),
    publishTime: FBLongDuration(year: 1, minute: 2, day: 3, month: 3),
    postRichText: 'Mo 3gaa post',
    commentsNum: 33,
    likesNum: 15,
    shareNum: 14,
    postPhoto: AssetImage('assets/img/prof.png'),
  ),
  FBPost(
    accountName: 'Ta5To5',
    accountPhoto: AssetImage('assets/img/prof.png'),
    publishTime: FBLongDuration(year: 0, minute: 22, day: 0, month: 3),
    postRichText: 'A B C D From a to z',
    commentsNum: 122,
    likesNum: 52,
    shareNum: 11,
  ),
  FBPost(
    accountName: 'Lion king',
    accountPhoto: AssetImage('assets/img/test4.png'),
    publishTime: FBLongDuration(year: 0, minute: 6, day: 0, month: 0),
    postRichText: '"Did you C the python biting C++" ,Java Say :)',
    commentsNum: 12,
    likesNum: 600,
    shareNum: 7,
    postPhoto: AssetImage('assets/img/test1.png'),
  ),
];
