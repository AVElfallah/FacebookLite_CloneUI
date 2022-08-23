import 'package:flutter/cupertino.dart';

import '../presentation/widgets/messenger_circular_friend_widget.dart';

class MessengerRandomTest {
  MessengerRandomTest();
  static List<Widget> getListOfUsers() {
    const images = [
      'test1.png',
      'test2.png',
      'test3.png',
      'test4.png',
      'test5.png',
      'test6.png',
    ];
    var back = List.generate(
      20,
      (index) => FBMessengerCircularFriendWidget(
        friendImgURI: 'assets/img/${images[index % images.length]}',
        isOnline: index % 2 == 0,
        isHaveStory: index % 3 == 0,
      ),
    );
    return back;
  }
}
