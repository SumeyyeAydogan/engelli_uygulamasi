import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {

  final child;

  MyPadding({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: child,
    );
  }
}
