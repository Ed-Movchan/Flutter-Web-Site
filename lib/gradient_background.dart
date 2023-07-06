import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class GradientBackground extends StatelessWidget {
  final color = MovieTweenProperty<Color?>();

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..scene(
              begin: const Duration(seconds: 0),
              duration: const Duration(seconds: 5))
          .tween(color, ColorTween(begin: Colors.blue.shade300, end: Colors.green.shade300))
      ..scene(
              begin: const Duration(seconds: 5),
              end: const Duration(seconds: 10))
          .tween(color, ColorTween(begin: Colors.green.shade300, end: Colors.purple.shade200))
      ..scene(
          begin: const Duration(seconds: 10),
          end: const Duration(seconds: 15))
          .tween(color, ColorTween(begin: Colors.purple.shade200, end: Colors.blue.shade300));

    return LoopAnimationBuilder<Movie>(
      tween: tween,
      duration: tween.duration,
      builder: (context, value, child) {
        return Container(
            color: color.from(value), // Get animated color
        );
      },
    );
  }
}
