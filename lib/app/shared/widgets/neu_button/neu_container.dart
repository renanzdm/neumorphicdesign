import 'package:flutter/material.dart';

class NeuContainer extends StatefulWidget {
  NeuContainer({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool isPressed = false;

  void onPressedDown(PointerDownEvent _) => setState(() {
        isPressed = true;
      });

  void onPressedUp(PointerUpEvent _) => setState(() {
        isPressed = false;
      });

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onPressedDown,
      onPointerUp: onPressedUp,
      child: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 10,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF1F2F4),
          boxShadow: isPressed
              ? [
                  BoxShadow(
                    color: Color.lerp(
                      Colors.blueGrey.shade100,
                      Colors.white,
                      .3,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: -Offset(4, 2),
                  ),
                  BoxShadow(
                    color: Color.lerp(
                      Colors.blueGrey.shade100,
                      Colors.white,
                      .3,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(4, 2),
                  ),
                    BoxShadow(
                    color: Colors.white,
                    offset: Offset(1, 1),
                  ),
                    BoxShadow(
                    color: Colors.white,
                    offset: -Offset(1, 1),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Color.lerp(
                      Colors.blueGrey.shade100,
                      Colors.white,
                      .3,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(4, 2),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: -Offset(1, 1),
                  ),
                  BoxShadow(
                    color: Color.lerp(
                      Colors.white,
                      Colors.black,
                      .02,
                    ),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: -Offset(4, 2),
                  ),
                ],
        ),
        child: widget.child ??
            Container(
              width: 50,
              height: 50,
            ),
      ),
    );
  }
}
