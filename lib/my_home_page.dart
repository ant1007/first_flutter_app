// ignore_for_file: unused_import

import 'package:first_flutter_app/new_route.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    if (_counter < 10) {
      setState(() => _counter++);
    }
  }

  void _decreaseCounter() {
    if (_counter > 0) {
      setState(() => _counter--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextButton(
                  onPressed: () {
                    //导航到新路由
                    /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewRoute(),
                        )); */
                    Navigator.pushNamed(context, 'new_page');
                  },
                  child: const Text('open new route')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('echo', arguments: 'hi');
                  },
                  child: const Text('open echo route')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('tip', arguments: '我是提示');
                  },
                  child: const Text('open tip route')),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: FloatingActionButton(
                onPressed: _decreaseCounter,
                tooltip: 'decrease count',
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                heroTag: 'Decrease',
                child: const Icon(Icons.remove),
              ),
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'increment count',
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              heroTag: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
