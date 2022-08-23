import 'package:flutter/material.dart';

class StoryCardWidget extends StatelessWidget {
  const StoryCardWidget(
      {Key? key, this.name, this.storyNumber, this.lastStoryImage})
      : super(key: key);
  final String? name;
  final int? storyNumber;
  final ImageProvider? lastStoryImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        _StoryCardShape(
          name: name,
          lastStoryImage: lastStoryImage,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 6),
          child: Card(
            color: Colors.blue,
            elevation: 45,
            margin: const EdgeInsets.all(5),
            child: SizedBox(
              width: 25,
              child: Text(
                storyNumber.toString(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _StoryCardShape extends StatelessWidget {
  const _StoryCardShape({this.name, this.lastStoryImage});
  final String? name;
  final ImageProvider? lastStoryImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, left: 7),
      child: Container(
          height: 170,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: lastStoryImage!,
              fit: BoxFit.cover,
            ),
            color: Colors.black45,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 4, 4),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Text(
                  name!,
                  style: const TextStyle(
                      backgroundColor: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                )
              ],
            ),
          )),
    );
  }
}

/*     */
