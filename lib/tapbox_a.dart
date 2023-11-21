import 'package:flutter/material.dart';

class TapboxA extends StatefulWidget {
  const TapboxA({super.key});

  @override
  State<TapboxA> createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() => _active = !_active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen[700],
              ),
              child: Center(
                child: Text(
                  _active ? 'Active' : 'Inactive',
                  style: const TextStyle(fontSize: 32, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
