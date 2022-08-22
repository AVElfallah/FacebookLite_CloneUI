import 'package:flutter/cupertino.dart';

class FBChatFriend {
  final bool isOnline;
  final String accountName;
  final ImageProvider accountPhoto;

  FBChatFriend(this.accountName, this.accountPhoto, this.isOnline);
}
