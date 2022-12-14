import 'package:fblite_clone/data/models/post_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../business_logic/bloc/app_settings_bloc/app_settings_bloc.dart';

class FBPostWidget extends StatelessWidget {
  const FBPostWidget({Key? key, required this.fbPost}) : super(key: key);
  final FBPost fbPost;

  @override
  Widget build(BuildContext context) {
    var isDarkColors = [
      Colors.blueGrey.shade900,
      Colors.blueGrey.shade800,
    ];
    var isLightColors = [
      Colors.white12,
      Colors.black12,
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.watch<AppSettingsBloc>().isDarkTheme
                ? Colors.white
                : Colors.black,
            width: .15,
          ),
          gradient: LinearGradient(
            colors: context.watch<AppSettingsBloc>().isDarkTheme
                ? isDarkColors
                : isLightColors,
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          backgroundImage: fbPost.accountPhoto,
                          radius: 29,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              fbPost.accountName != null
                                  ? fbPost.accountName!
                                  : 'Noname',
                              style: const TextStyle(fontSize: 19),
                              maxLines: 3,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  fbPost.publishTime!.toLargeString(context)!,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: context
                                            .watch<AppSettingsBloc>()
                                            .isDarkTheme
                                        ? Colors.grey
                                        : Colors.black38,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Icon(
                                    FontAwesomeIcons.earthAfrica,
                                    size: 15,
                                    color: context
                                            .watch<AppSettingsBloc>()
                                            .isDarkTheme
                                        ? Colors.grey
                                        : Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(FontAwesomeIcons.ellipsis)
                ],
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(2, 30, 2, 10),
                  child: SizedBox(
                      width: double.infinity,
                      child: RichText(
                        softWrap: false,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 17,
                            color: context.watch<AppSettingsBloc>().isDarkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                          text: fbPost.postRichText ?? '',
                        ),
                        textAlign: TextAlign.justify,
                      ))),
              fbPost.postPhoto != null
                  ? Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image(fit: BoxFit.cover, image: fbPost.postPhoto!),
                    )
                  : const Text(''),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          context.watch<AppSettingsBloc>().isDarkTheme
                              ? Colors.black54
                              : Colors.black38,
                      radius: 10,
                      child: const Icon(
                        FontAwesomeIcons.solidHeart,
                        size: 11,
                        color: Colors.red,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor:
                          context.watch<AppSettingsBloc>().isDarkTheme
                              ? Colors.black54
                              : Colors.black38,
                      radius: 10,
                      child: const Icon(
                        FontAwesomeIcons.thumbsUp,
                        size: 11,
                        color: Colors.blue,
                      ),
                    ),
                    Text(fbPost.likesNum.toString())
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * .29, 20),
                    ),
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.thumbsUp),
                    label: Text(
                      fbPost.likesNum.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * .29, 20),
                    ),
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.comment),
                    label: Text(
                      fbPost.commentsNum.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * .29, 20),
                    ),
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.share),
                    label: Text(
                      fbPost.shareNum.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
