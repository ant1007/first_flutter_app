// ignore_for_file: unused_import

import 'package:first_flutter_app/counter_widget.dart';
import 'package:first_flutter_app/cupertino_test_route.dart';
import 'package:first_flutter_app/echo_route.dart';
import 'package:first_flutter_app/get_state_object_route.dart';
import 'package:first_flutter_app/my_home_page.dart';
import 'package:first_flutter_app/context_route.dart';
import 'package:first_flutter_app/echo.dart';
import 'package:first_flutter_app/new_route.dart';
import 'package:first_flutter_app/tip_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/', //名为"/"的路由作为应用的home(首页)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      //注册路由表
      /* routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        'new_page': (context) => const NewRoute(),
        'echo': (context) => const EchoRoute(),
        'tip': (context) => TipRoute(
              text: ModalRoute.of(context)?.settings.arguments.toString() ??
                  '我是提示xxxx',
            ),
      }, */
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              String routeName = settings.name ?? 'unknown';
              switch (routeName) {
                case '/':
                  return const MyHomePage(title: 'Flutter Demo Home Page');
                case 'new_page':
                  return const NewRoute();
                case 'echo':
                  return const EchoRoute();
                case 'tip':
                  return TipRoute(
                    text: settings.arguments.toString(),
                  );
                default:
                  return const MyHomePage(title: 'Flutter Demo Home Page');
              }
              // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
              // 引导用户登录；其他情况则正常打开路由。
            });
      },
    );
  }
}
