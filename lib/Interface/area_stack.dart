import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AreaStack extends StatelessWidget {
  final String icon;
  final String text;
  final Color color;

  AreaStack(this.icon, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Center all children of the Stack
      children: [
        Container(
          height: 180, // Define a height to make the background visible
          width: 180,  // Define a width to make the background visible
          decoration: BoxDecoration(
            color: color, // Apply the passed color as background
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min, // Minimize height to fit children
          mainAxisAlignment: MainAxisAlignment.center, // Center children vertically
          children: [
            Image.asset(
              icon,
              height: 80,
              width: 80,
            ),
            SizedBox(height: 8), // Spacing between image and text
            Text(
              text,
              style: TextStyle(color: Colors.grey,fontSize: 15),


            ),
          ],
        ),
      ],
    );
  }
}
