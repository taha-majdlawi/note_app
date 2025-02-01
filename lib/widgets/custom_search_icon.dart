
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color:
            Color.fromRGBO(255, 255, 255, 0.05), // White color with 50% opacity

        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
