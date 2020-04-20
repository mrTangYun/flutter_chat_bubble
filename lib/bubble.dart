library chat_bubble;

import 'dart:math';
import 'package:flutter/material.dart';

abstract class Bubble extends CustomClipper<Path> {
  /// 圆角大小
  double radius;

  /// 三角形开始的位置
  double triangleTop;

  /// 三角形边长
  double triangleLength;

  /// 三角形圆角大小
  double triangleRadius;

  /// 三角形高度的一半
  double _triangleHalfHeight;

  /// 三角形圆角的高度(宽度)
  double _triangleRadiusHeight;

  Bubble(
      {this.radius, this.triangleTop, this.triangleLength, this.triangleRadius})
      : this._triangleHalfHeight = sqrt(2 * pow(triangleLength, 2)) / 2,
        this._triangleRadiusHeight = cos(pi * 45 / 180) * triangleRadius;
}

class BubbleClipperRight extends Bubble {
  BubbleClipperRight({radius, triangleTop, triangleLength, triangleRadius})
      : super(
          radius: radius,
          triangleTop: triangleTop,
          triangleLength: triangleLength,
          triangleRadius: triangleRadius,
        );
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0 + this.radius, 0);

    // 右上角
    path.lineTo(size.width - this._triangleHalfHeight - this.radius, 0);
    final Offset _pc1 = Offset(size.width - this._triangleHalfHeight, 0);
    final Offset _pe1 =
        Offset(size.width - this._triangleHalfHeight, this.radius);
    path.quadraticBezierTo(_pc1.dx, _pc1.dy, _pe1.dx, _pe1.dy);
    path.lineTo(_pe1.dx, _pe1.dy);

    // 三角形
    path.lineTo(_pe1.dx, this.triangleTop);
    path.lineTo(
        size.width - this._triangleRadiusHeight,
        this.triangleTop +
            this._triangleHalfHeight -
            this._triangleRadiusHeight);
    final Offset _pct =
        Offset(size.width, this.triangleTop + this._triangleHalfHeight);
    final Offset _pet = Offset(
        size.width - this._triangleRadiusHeight,
        this.triangleTop +
            this._triangleHalfHeight +
            this._triangleRadiusHeight);
    path.quadraticBezierTo(_pct.dx, _pct.dy, _pet.dx, _pet.dy);
    path.lineTo(_pet.dx, _pet.dy);
    path.lineTo(_pe1.dx, this.triangleTop + this._triangleHalfHeight * 2);

    // 右下角
    path.lineTo(_pe1.dx, size.height - this.radius);
    final Offset _pc2 = Offset(_pe1.dx, size.height);
    final Offset _pe2 = Offset(_pe1.dx - this.radius, size.height);
    path.quadraticBezierTo(_pc2.dx, _pc2.dy, _pe2.dx, _pe2.dy);
    path.lineTo(_pe2.dx, _pe2.dy);

    // 左下角
    path.lineTo(0 + this.radius, size.height);
    final Offset _pc3 = Offset(0, size.height);
    final Offset _pe3 = Offset(0, size.height - this.radius);
    path.quadraticBezierTo(_pc3.dx, _pc3.dy, _pe3.dx, _pe3.dy);
    path.lineTo(_pe3.dx, _pe3.dy);

    // 左上角
    path.lineTo(0, 0 + this.radius);
    final Offset _pc4 = Offset(0, 0);
    final Offset _pe4 = Offset(0 + this.radius, 0);
    path.quadraticBezierTo(_pc4.dx, _pc4.dy, _pe4.dx, _pe4.dy);
    path.lineTo(_pe4.dx, _pe4.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BubbleClipperLeft extends Bubble {
  BubbleClipperLeft({radius, triangleTop, triangleLength, triangleRadius})
      : super(
          radius: radius,
          triangleTop: triangleTop,
          triangleLength: triangleLength,
          triangleRadius: triangleRadius,
        );
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0 + this.radius + this._triangleHalfHeight, 0);

    // 右上角
    path.lineTo(size.width - this.radius, 0);
    final Offset _pc1 = Offset(size.width, 0);
    final Offset _pe1 = Offset(size.width, this.radius);
    path.quadraticBezierTo(_pc1.dx, _pc1.dy, _pe1.dx, _pe1.dy);
    path.lineTo(_pe1.dx, _pe1.dy);

    // 右下角
    path.lineTo(_pe1.dx, size.height - this.radius);
    final Offset _pc2 = Offset(_pe1.dx, size.height);
    final Offset _pe2 = Offset(_pe1.dx - this.radius, size.height);
    path.quadraticBezierTo(_pc2.dx, _pc2.dy, _pe2.dx, _pe2.dy);
    path.lineTo(_pe2.dx, _pe2.dy);

    // 左下角
    path.lineTo(0 + this.radius + this._triangleHalfHeight, size.height);
    final Offset _pc3 = Offset(0 + this._triangleHalfHeight, size.height);
    final Offset _pe3 =
        Offset(0 + this._triangleHalfHeight, size.height - this.radius);
    path.quadraticBezierTo(_pc3.dx, _pc3.dy, _pe3.dx, _pe3.dy);
    path.lineTo(_pe3.dx, _pe3.dy);

    // 三角形
    path.lineTo(_pe3.dx, this.triangleTop + this._triangleHalfHeight * 2);
    path.lineTo(
        0 + this._triangleRadiusHeight,
        this.triangleTop +
            this._triangleHalfHeight +
            this._triangleRadiusHeight);
    final Offset _pct = Offset(0, this.triangleTop + this._triangleHalfHeight);
    final Offset _pet = Offset(
        0 + this._triangleRadiusHeight,
        this.triangleTop +
            this._triangleHalfHeight -
            this._triangleRadiusHeight);
    path.quadraticBezierTo(_pct.dx, _pct.dy, _pet.dx, _pet.dy);
    path.lineTo(_pet.dx, _pet.dy);
    path.lineTo(_pe3.dx, this.triangleTop);

    // 左上角
    path.lineTo(_pe3.dx, 0 + this.radius);
    final Offset _pc4 = Offset(_pe3.dx, 0);
    final Offset _pe4 = Offset(_pe3.dx + this.radius, 0);
    path.quadraticBezierTo(_pc4.dx, _pc4.dy, _pe4.dx, _pe4.dy);
    path.lineTo(_pe4.dx, _pe4.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
