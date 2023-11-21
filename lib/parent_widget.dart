import 'package:first_flutter_app/tapbox_b.dart';
import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() => _active = newValue);
  }

  @override
  Widget build(BuildContext context) {
    return TapboxB(
      active: _active,
      onChanged: _handleTapBoxChanged,
    );
  }
}
