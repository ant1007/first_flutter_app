import 'package:first_flutter_app/log.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, this.initValue = 0});

  final int initValue;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    // 初始化状态
    _counter = widget.initValue;
    Log.d("initState");
  }

  @override
  Widget build(BuildContext context) {
    Log.d("build");
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('$_counter'),
          //点击后计数器自增
          onPressed: () => setState(() => ++_counter),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    Log.d("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    Log.d("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    Log.d("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    Log.d("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Log.d("didChangeDependencies");
  }
}

class StateLifecycleTest extends StatelessWidget {
  const StateLifecycleTest({super.key});

  @override
  Widget build(BuildContext context) {
    //移除计数器
    //return CounterWidget ();
    //随便返回一个Text()
    return const Text("xxx");
  }
}
