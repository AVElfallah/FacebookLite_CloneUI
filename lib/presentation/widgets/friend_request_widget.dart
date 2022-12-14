import 'package:fblite_clone/data/localizations/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';
import '../../data/models/post_duration_model.dart';

class FBFriendRequestWidget extends StatelessWidget {
  final String? accountName;
  final ImageProvider? accountPhoto;
  final List<ImageProvider>? friendsPhotos;
  final int? multualFrindsNumber;
  final FBAppDuration? requestSentDuration;

  const FBFriendRequestWidget({
    Key? key,
    this.accountName,
    this.accountPhoto,
    this.friendsPhotos,
    this.multualFrindsNumber,
    this.requestSentDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQSize = MediaQuery.of(context).size;
    isLandScape() => (mQSize.width > mQSize.height) ? true : false;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Container(
        width: double.infinity,
        height: isLandScape() ? mQSize.height * .349 : mQSize.height * .23,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: .1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Padding(
            padding: isLandScape()
                ? const EdgeInsets.only(right: 35, left: 30)
                : const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey.shade900,
                  radius: 54,
                  backgroundImage: accountPhoto,
                ),
                SizedBox(
                  width: mQSize.width * .65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              accountName!,
                              style: const TextStyle(fontSize: 21),
                            ),
                            Text(
                              requestSentDuration!.toShortString(context)!,
                              style: const TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: mQSize.width * .27,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.amber.shade800,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: friendsPhotos![0],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue.shade900,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: friendsPhotos![1],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan.shade900,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: friendsPhotos![2],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '$multualFrindsNumber ${getLang(context, 'mutual_friends')}',
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                style: const TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: isLandScape()
                                    ? Size(
                                        mQSize.width * .29, mQSize.height * .06)
                                    : Size(mQSize.width * .30,
                                        mQSize.height * .05),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary:
                                    context.watch<AppSettingsBloc>().isDarkTheme
                                        ? Colors.blue
                                        : Colors.black,
                                elevation: 0,
                              ),
                              onPressed: () {},
                              child: Text(
                                getLang(context, 'confirm'),
                                style: const TextStyle(fontSize: 21),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: isLandScape()
                                    ? Size(
                                        mQSize.width * .29, mQSize.height * .06)
                                    : Size(mQSize.width * .30,
                                        mQSize.height * .05),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                primary:
                                    context.watch<AppSettingsBloc>().isDarkTheme
                                        ? Colors.grey.shade500
                                        : Colors.black38,
                              ),
                              onPressed: () {},
                              child: Text(
                                getLang(context, 'delete'),
                                style: const TextStyle(fontSize: 21),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
