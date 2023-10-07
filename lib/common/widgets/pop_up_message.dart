// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PopUpMessage extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  const PopUpMessage({
    Key? key,
    required this.message,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      title: const Text('Message'),
      content: Text(message),
    );
  }
}
