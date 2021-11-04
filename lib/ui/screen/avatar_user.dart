import 'dart:io';

import 'package:flutter/material.dart';

class AvatarUser extends StatelessWidget {
Widget image = Image.file(File('assets/ava.jpeg'));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: image
      //Image.network('assets/ava.jpeg'),

    );
  }
}
