import 'package:flutter/material.dart';

class TapboxB extends StatelessWidget {
  const TapboxB({super.key, this.active = false, required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
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
                color: active ? Colors.lightGreen[700] : Colors.grey[600],
              ),
              child: Center(
                child: Text(
                  active ? 'Active' : 'Inactive',
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
