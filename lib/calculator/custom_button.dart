import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;
  const CustomButton({ Key? key, required this.value, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TextButton(
        onPressed: onPressed,
        child: Text(value, style: const TextStyle(fontSize: 30),),
      ),
    );
  }
}