import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  const EchoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context)?.settings.arguments.toString() ?? '未知参数';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Echo Route'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}
