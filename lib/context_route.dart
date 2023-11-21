import 'package:flutter/material.dart';

class ContextRoute extends StatelessWidget {
  const ContextRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("context测试"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Builder(
        builder: (context) {
          Scaffold scaffold =
              context.findAncestorWidgetOfExactType<Scaffold>()!;
          return (scaffold.appBar as AppBar).title!;
        },
      ),
    );
  }
}
