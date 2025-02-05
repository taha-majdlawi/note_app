import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key, required this.title, required this.icon,required this.onPressed});
  final String title;
  final IconData icon;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Spacer(),
          CustomIcon(
            onPressed: onPressed  ,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
