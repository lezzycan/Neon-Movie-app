// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class PositioningContainer extends StatelessWidget {
  const PositioningContainer(
      {Key? key,
       this.top,
      this.left,
      this.right,
      required this.color1,
      required this.height,
      required this.width,
      required this.sigmaX,
      required this.sigmaY,
      required this.child, this.bottom})
      : super(key: key);

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final Color color1;
  final double height;
  final double width;
  final double sigmaX;
  final double sigmaY;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color1,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 166,
            sigmaY: 166,
          ),
          child: child,
        ),
      ),
    );
  }
}
