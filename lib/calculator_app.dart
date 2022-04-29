import 'package:calculator_app/services/calculator.dart';
import 'package:calculator_app/shared/round_button.dart';
import 'package:calculator_app/shared/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String result = '0';

  Calculator calc = Calculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEBEC),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300, maxHeight: 70),
                    child: Text(
                      calc.output,
                      style: kResultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )),
            SizedBox(
              height: 100,
              child: Text(
                calc.resultOperationText,
                style: kOperationTextStyle,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                      buttonText: 'AC',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('AC');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '+/-',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('+/-');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '%',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('%');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '÷',
                      colorText: kOrangeColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('÷');
                        });
                      },
                      buttonWidth: 8),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                      buttonText: '7',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('7');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '8',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('8');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '9',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('9');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: 'x',
                      colorText: kOrangeColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('x');
                        });
                      },
                      buttonWidth: 8),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                      buttonText: '4',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('4');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '5',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('5');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '6',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('6');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '-',
                      colorText: kOrangeColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('-');
                        });
                      },
                      buttonWidth: 8),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                      buttonText: '1',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('1');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '2',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('2');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '3',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('3');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '+',
                      colorText: kOrangeColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('+');
                        });
                      },
                      buttonWidth: 8),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                      buttonText: '0',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40)),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('0');
                        });
                      },
                      buttonWidth: 2.9),
                  RoundButton(
                      buttonText: '.',
                      colorText: kBlackColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('.');
                        });
                      },
                      buttonWidth: 8),
                  RoundButton(
                      buttonText: '=',
                      colorText: kOrangeColorText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          calc.buttonPressed('=');
                        });
                      },
                      buttonWidth: 8),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      )),
    );
  }
}
