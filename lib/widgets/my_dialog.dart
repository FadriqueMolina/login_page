import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  final String _message;
  const MyDialog({super.key, required String message}) : _message = message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(_message),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Close"))
      ],
    );
  }
}
