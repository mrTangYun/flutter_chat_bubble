library chat_bubble;

import 'package:chat_bubble/bubble.dart';
import 'package:chat_bubble/clipShadowPath.dart';
import 'package:flutter/material.dart';

enum ChatBubbleNipDirection { LEFT, RIGHT }

class ChatBubble extends StatelessWidget {
  /// 圆角大小
  final double radius;

  /// 三角形距离顶部的距离
  final double nipTop;

  /// 三角形边长
  final double nipLength;

  /// 三角形圆角大小
  final double nipRadius;

  final Widget child;
  final List<Shadow> shadows;
  final ChatBubbleNipDirection direction;
  ChatBubble({
    @required this.child,
    this.shadows,
    this.direction = ChatBubbleNipDirection.RIGHT,
    this.radius = 6.0,
    this.nipTop = 15.0,
    this.nipLength = 10.0,
    this.nipRadius = 2.0,
  });
  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      shadows: this.shadows,
      clipper: this.direction == ChatBubbleNipDirection.RIGHT
          ? BubbleClipperRight(
              radius: radius,
              triangleTop: nipTop,
              triangleLength: nipLength,
              triangleRadius: nipRadius,
            )
          : BubbleClipperLeft(
              radius: radius,
              triangleTop: nipTop,
              triangleLength: nipLength,
              triangleRadius: nipRadius,
            ),
      child: child,
    );
  }
}
