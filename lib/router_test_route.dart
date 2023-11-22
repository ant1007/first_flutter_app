import 'package:first_flutter_app/log.dart';
import 'package:first_flutter_app/tip_route.dart';
import 'package:flutter/material.dart';

class RouterTestRoute extends StatelessWidget {
  const RouterTestRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          // 打开`TipRoute`，并等待返回结果
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const TipRoute(
                  // 路由参数
                  text: "我是提示xxxx",
                );
              },
            ),
          );
          //输出`TipRoute`路由返回结果
          Log.d("路由返回值: $result");
        },
        child: const Text("打开提示页"),
      ),
    );
  }
}
