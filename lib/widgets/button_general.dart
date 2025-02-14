import 'package:flutter/material.dart';

class ButtonGeneral extends StatelessWidget {
  final String text;
  final Color colorValue;
  final double fontSize;
  final VoidCallback? onPressed; // Hacer la función opcional

  const ButtonGeneral({
    Key? key,
    required this.text,
    required this.colorValue,
    this.fontSize = 18,
    this.onPressed, // Marcar como opcional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Usar onPressed directamente
      style: ElevatedButton.styleFrom(
        backgroundColor: colorValue,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
