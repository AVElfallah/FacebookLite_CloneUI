import 'package:fblite_clone/data/models/post_model.dart';
import 'package:fblite_clone/presentation/widgets/post_widget.dart';

import 'package:flutter/material.dart';

class PostBuilder {
  PostBuilder({required this.fbPostsList});
  List<FBPost> fbPostsList;
  List<Widget> convertToListOfWidgets() =>
      fbPostsList.map((e) => FBPostWidget(fbPost: e)).toList();
}
