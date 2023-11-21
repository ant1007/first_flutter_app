import 'package:first_flutter_app/tapbox_c.dart';
import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
  const ParentWidgetC({super.key});

  @override
  State<ParentWidgetC> createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;

  void _hanleTapboxTapChanged(bool newValue) {
    setState(() => _active = newValue);
  }

  @override
  Widget build(BuildContext context) {
    return TapboxC(
      active: _active,
      onChanged: _hanleTapboxTapChanged,
    );
  }
}
