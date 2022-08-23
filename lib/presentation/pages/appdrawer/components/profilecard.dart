import 'package:flutter/material.dart';

class FBProfileCardView extends StatelessWidget {
  const FBProfileCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .25,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/img/background.png'),
                fit: BoxFit.cover,
              )),
        ),
        Column(
          children: const [
            CircleAvatar(
              radius: 37,
              backgroundImage: AssetImage('assets/img/prof.png'),
            ),
            Text(
              'Facebook Account',
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
