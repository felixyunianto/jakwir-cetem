import 'package:flutter/material.dart';

class BackgroundOther extends StatelessWidget {
  final Widget child;
  const BackgroundOther({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child : child
    );
  }
}
