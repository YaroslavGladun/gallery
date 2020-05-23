import 'dart:ui';

import 'package:flutter/material.dart';

class TransparentCard extends StatefulWidget {
  final Widget child;
  final double height;
  final double width;

  const TransparentCard({Key key, this.child, this.height, this.width}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TransparentCardState();
}

class TransparentCardState extends State<TransparentCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: new Container(
          width: widget.width,
          height: widget.height,
          decoration: new BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.5),
          ),
          child: new Center(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}