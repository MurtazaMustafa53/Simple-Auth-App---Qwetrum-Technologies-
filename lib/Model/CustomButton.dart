import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onPressed;

  const Custombutton({
    super.key,

    required this.text,
    this.icon = Icons.miscellaneous_services,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    );
  }
}
