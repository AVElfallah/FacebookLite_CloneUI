import 'package:fblite_clone/business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import 'package:flutter/material.dart';

class FBMessengerCircularFriendWidget extends StatelessWidget {
  FBMessengerCircularFriendWidget({
    Key? key,
    this.friendImgURI,
    this.isOnline,
    this.isHaveStory,
    this.iconOnly,
    this.radius,
  }) : super(key: key);

  final String? friendImgURI;
  final Widget? iconOnly;
  final bool? isOnline;
  final double? radius;
  final bool? isHaveStory;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        children: [
          Container(
            width: radius ?? 50,
            height: radius ?? 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  friendImgURI!,
                ),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: isHaveStory! ? Colors.blue : Colors.grey.shade700,
                width: isHaveStory! ? 2 : 2, //ToDo: Add Her if there is a story
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
          ),
          isOnline!
              ? Positioned(
                  bottom: 2,
                  right: -1,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 91, 245, 142),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppSettingsBloc.get(context).isDarkTheme
                            ? Colors.blueGrey.shade900
                            : Colors.blueGrey.shade300,
                        width: 3,
                      ),
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
