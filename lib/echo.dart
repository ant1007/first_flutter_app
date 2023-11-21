import 'package:flutter/material.dart';

class Echo extends StatelessWidget {
  const Echo({
    super.key,
    this.backgroundColor = Colors.green,
    required this.text,
  });

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}
