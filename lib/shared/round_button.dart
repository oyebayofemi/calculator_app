import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundButton extends StatefulWidget {
  String buttonText;
  Color colorText;
  Function() onPressed;
  NeumorphicBoxShape buttonBoxShape;
  double buttonWidth;
  RoundButton({
    required this.buttonText,
    required this.colorText,
    required this.buttonBoxShape,
    required this.onPressed,
    required this.buttonWidth,
  });

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        color: Color(0xFFEDEBEC),
        boxShape: widget.buttonBoxShape,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 23,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      ),
    );
  }
}
