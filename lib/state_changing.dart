import 'package:flutter/material.dart';
import 'package:this_basic_app/image_changer.dart';
//import 'package:this_basic_app/text_styling.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StateChanger extends StatelessWidget {
  //const StateChanger(this.color1, this.color2, {super.key});

  const  StateChanger.blueAccent({super.key})
      : color1 = const Color.fromRGBO(7, 1, 58, 1),
        color2 = const Color.fromRGBO(7, 1, 58, 1);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: ImageChange(),

        // child: StyledText(),
      ),
    );
  }
}