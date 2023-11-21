import 'package:flutter/material.dart';

class GetStateObjectRoute extends StatefulWidget {
  const GetStateObjectRoute({super.key});

  @override
  State<GetStateObjectRoute> createState() => _GetStateObjectRouteState();
}

class _GetStateObjectRouteState extends State<GetStateObjectRoute> {
  //定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
  static final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: const Text('子树中获取State对象'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // 查找父级最近的Scaffold对应的ScaffoldState对象
                  ScaffoldState state =
                      context.findAncestorStateOfType<ScaffoldState>()!;
                  // 打开抽屉菜单
                  return state.openDrawer();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blue),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                ),
                child: const Text('打开抽屉菜单1'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // 直接通过of静态方法来获取ScaffoldState
                  ScaffoldState state = Scaffold.of(context);
                  // 打开抽屉菜单
                  return state.openDrawer();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blue),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                ),
                child: const Text('打开抽屉菜单2'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () => _globalKey.currentState?.openDrawer(),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blue),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                ),
                child: const Text('打开抽屉菜单3'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('我是SnackBar'),
                      backgroundColor: Colors.blue,
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blue),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                ),
                child: const Text('显示SnackBar'),
              );
            }),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
