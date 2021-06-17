import 'package:flutter/material.dart';

class CloseKeyboard extends StatelessWidget {
  final child;

  CloseKeyboard({Key key, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child,
    );
  }
}
