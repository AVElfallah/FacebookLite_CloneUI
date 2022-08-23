import 'package:flutter/material.dart';

import 'post_duration_model.dart';

class FBPost {
  FBPost({
    this.accountName,
    this.accountPhoto,
    this.commentsNum,
    this.likesNum,
    this.postPhoto,
    this.postRichText,
    this.publishTime,
    this.shareNum,
  });
  String? accountName, postRichText;
  int? likesNum, commentsNum, shareNum;
  ImageProvider? postPhoto, accountPhoto;
  FBAppDuration? publishTime;
}
