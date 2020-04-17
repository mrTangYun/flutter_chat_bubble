import 'package:flutter/material.dart';

@immutable
class ClipShadowPath extends StatelessWidget {
  final List<Shadow> shadows;
  final CustomClipper<Path> clipper;
  final Widget child;

  ClipShadowPath({
    this.shadows,
    @required this.clipper,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (this.shadows != null && this.shadows.length > 0) {
      return CustomPaint(
        painter: _ClipShadowShadowPainter(
          clipper: this.clipper,
          shadows: this.shadows,
        ),
        child: ClipPath(child: child, clipper: this.clipper),
      );
    } else {
      return ClipPath(child: child, clipper: this.clipper);
    }
  }
}

class _ClipShadowShadowPainter extends CustomPainter {
  final List<Shadow> shadows;
  final CustomClipper<Path> clipper;

  _ClipShadowShadowPainter({@required this.shadows, @required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    if (shadows.length > 0) {
      for (var i = 0; i < shadows.length; i++) {
        Shadow shadow = shadows[i];
        var paint = shadow.toPaint();
        var clipPath = clipper.getClip(size).shift(shadow.offset);
        canvas.drawPath(clipPath, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
