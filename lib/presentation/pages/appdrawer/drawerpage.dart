import 'package:fblite_clone/presentation/pages/appdrawer/components/menuelemnts.dart';
import 'package:fblite_clone/presentation/pages/appdrawer/components/profilecard.dart';
import 'package:flutter/material.dart';

class FBDrawer extends StatelessWidget {
  const FBDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              FBProfileCardView(),
              FBMenuElments(),
            ],
          ),
        ),
      ),
    );
  }
}

/*  */
