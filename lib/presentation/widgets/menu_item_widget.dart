import 'package:flutter/material.dart';

class FBMenuItem extends StatelessWidget {
  FBMenuItem(
      {this.title, this.onPress, this.icon, this.image, this.darkThemeSwitch});
  final String? title;
  final void Function()? onPress;
  final Icon? icon;
  final ImageProvider? image;
  final Widget? darkThemeSwitch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon == null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: CircleAvatar(
                    backgroundImage: image!,
                    radius: 27,
                  ),
                )
              : icon!,
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 0, 15),
            child: Text(
              title == null ? 'Notitle' : title!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          darkThemeSwitch == null ? Text('') : darkThemeSwitch!
        ],
      ),
    );
  }
}
