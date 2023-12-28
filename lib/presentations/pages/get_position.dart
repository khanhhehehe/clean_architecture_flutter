import 'package:flutter/material.dart';

class GetPositionScreen extends StatefulWidget {
  const GetPositionScreen({super.key});

  @override
  State<GetPositionScreen> createState() => _GetPositionScreenState();
}

class _GetPositionScreenState extends State<GetPositionScreen> {
  double posX = 100;
  double posY = 100;
  void onTapDown(BuildContext context, TapDownDetails details) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      posX = localOffset.dx;
      posY = localOffset.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerDown: (event) {
          // print('x: ${event.localPosition.dx}');
          // print('y: ${event.localPosition.dy}');
        },
        child: Container(
          color: Colors.red,
        ));
  }
}
