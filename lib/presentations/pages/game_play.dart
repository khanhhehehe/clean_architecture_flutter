import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:my_practice_project/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class GamePlay extends StatefulWidget {
  const GamePlay({super.key});

  @override
  State<GamePlay> createState() => _GamePlayState();
}

class _GamePlayState extends State<GamePlay> {
  double position = 0;
  double position2 = 0;
  late Timer timer;
  double characterX = 10;
  double characterY = 100;
  void setPosition() {
    setState(() {
      // characterY += 5;
      if (position >= MediaQuery.of(context).size.width) {
        position = -MediaQuery.of(context).size.width * 2;
      }
      position++;
      if (position2 >= MediaQuery.of(context).size.width) {
        position2 = -MediaQuery.of(context).size.width * 2;
      }
      position2++;
    });
  }

  void initAnimated() {
    timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      setPosition();
    });
  }

  @override
  void initState() {
    initAnimated();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    position2 = 0 - MediaQuery.of(context).size.width * 2;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void onFly() {
    setState(() {
      characterY -= 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onFly();
      },
      child: Stack(children: [
        Positioned(
          left: position,
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.hills.path),
                    fit: BoxFit.fill),
              )),
        ),
        Positioned(
          left: position2,
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.hills.path),
                    fit: BoxFit.fill),
              )),
        ),
        Positioned(
            left: characterX,
            top: characterY,
            child: SizedBox(
                height: 200,
                width: 200,
                child: Lottie.asset(Assets.json.birdFly)))
      ]),
    );
  }
}
