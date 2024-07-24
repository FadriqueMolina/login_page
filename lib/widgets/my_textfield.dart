import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String _hintText;
  final bool _isObscured;
  final TextEditingController _controller;

  const MyTextfield(
      {super.key,
      required String hintText,
      required bool isObscured,
      required TextEditingController controller})
      : _hintText = hintText,
        _isObscured = isObscured,
        _controller = controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary)),
          hintText: _hintText,
        ),
        obscureText: _isObscured,
        controller: _controller,
      ),
    );
  }
}
