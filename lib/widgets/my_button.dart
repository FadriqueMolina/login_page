import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String _buttonText;
  final VoidCallback _action;

  const MyButton(
      {super.key, required String buttonText, required VoidCallback action})
      : _buttonText = buttonText,
        _action = action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _action,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 170),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          _buttonText,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
    );
  }
}
