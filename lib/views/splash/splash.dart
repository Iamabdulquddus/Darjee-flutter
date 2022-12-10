import 'package:darjee_flutter/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../constants/style.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitWanderingCubes(
              color: primary,
              size: 70.0,
            ),
            SizedBox(height: 10,),
            TextLiquidFill(
              text: 'D A R J E E',
              waveColor: primary,
              loadDuration: Duration(seconds: 5),
              boxBackgroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 100.0,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 16.0,
                fontFamily: 'Agne',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Powered By'),
                ],
              ),
            ),
            Image.asset(
              devCrew,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
