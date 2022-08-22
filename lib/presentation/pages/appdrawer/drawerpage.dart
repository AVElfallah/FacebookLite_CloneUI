import 'package:fblite_clone/presentation/pages/appdrawer/components/menuelemnts.dart';
import 'package:fblite_clone/presentation/pages/appdrawer/components/profilecard.dart';
import 'package:flutter/material.dart';

class FBDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
