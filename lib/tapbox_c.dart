import 'package:flutter/material.dart';

class TapboxC extends StatefulWidget {
  const TapboxC({super.key, this.active = false, required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<TapboxC> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() => _highlight = true);
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() => _highlight = false);
  }

  void _handleTapCancel() {
    setState(() => _highlight = false);
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown, // 处理按下事件
      onTapUp: _handleTapUp, // 处理抬起事件
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                  color:
                      widget.active ? Colors.lightGreen[700] : Colors.grey[600],
                  border: _highlight
                      ? Border.all(color: Colors.teal, width: 10)
                      : null),
              child: Center(
                child: Text(
                  widget.active ? 'Active' : 'Inactive',
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
