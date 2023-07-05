import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen extends StatelessWidget {
  const CircularParticleScreen();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        key: UniqueKey(),
        child: Center(
          child: CircularParticle(
            // key: UniqueKey(),
            awayRadius: 80,
            numberOfParticles: 200,
            speedOfParticles: 1,
            height: screenHeight,
            width: screenWidth,
            onTapAnimation: true,
            particleColor: Colors.blue.withAlpha(210),
            awayAnimationDuration: const Duration(milliseconds: 600),
            maxParticleSize: 8,
            isRandSize: true,
            isRandomColor: true,
            randColorList: [
              Colors.blue.withAlpha(210)
            ],
            awayAnimationCurve: Curves.easeInOutBack,
            enableHover: true,
            hoverColor: Colors.blue,
            hoverRadius: 90,
            connectDots: true, //not recommended
          ),
        ),
      ),
    );
  }
}