import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/page/official_demo/official_counter_demo_state.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/6 13:05
// usage ：跨页面获取数据统一页面
// ------------------------------------------------------

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("跨页面获取数据页")),
      body: Center(
        child: Column(
          children: <Widget>[
            // 获取官方计数器案例点击次数
            Consumer(
              builder: (_, ref, __) {
                final int v = ref.watch(officialCounterDemoStateProvider);
                return Text("1、官方计数器案例中，当前点了几次：$v");
              },
            ),
          ],
        ),
      ),
    );
  }
}
