import 'package:flutter/material.dart';

class FBMenuItem extends StatelessWidget {
  const FBMenuItem(
      {Key? key,
      this.title,
      this.onPress,
      this.icon,
      this.image,
      this.darkThemeSwitch})
      : super(key: key);
  final String? title;
  final void Function()? onPress;
  final Icon? icon;
  final ImageProvider? image;
  final Widget? darkThemeSwitch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: icon ??
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            child: Image(
              image: image!,
              width: 50,
            ),
          ),
      title: Text(
        title ?? 'no title',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: darkThemeSwitch ?? const SizedBox(),
    );
  }
}
