import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class ImageChange extends StatefulWidget {
  const ImageChange({super.key});

  @override
  State<ImageChange> createState() {
    return _ImageChangeState();
  }
}

class _ImageChangeState extends State<ImageChange> {
  var currentImageChange = 1;

  void changeImage() {
    setState(() {
      currentImageChange = Random().nextInt(6) + 1;
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/pic-$currentImageChange.png',
            width: 300,
            height:
            300, // Ensure the height is the same as the width for a perfect circle
            fit: BoxFit.cover, // Ensures the image covers the circle
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton.icon(
          onPressed: changeImage,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 32,
            ),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: Text(
            'Let\'s Go',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            //TextStyle(color: Colors.white)
          ),
        ),
      ],
    );
  }
}