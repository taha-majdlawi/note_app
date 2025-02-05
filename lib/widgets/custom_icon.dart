import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon,required this.onPressed});
  final IconData icon;
  final  void Function()? onPressed;
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
        child: IconButton(
          onPressed: onPressed,
          icon : Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
