import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/page/base_use_demo/base_use_state.dart';
import 'package:riverpod_demo/widgets/allen_btn.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 13:57
// usage ：基本使用案例
// ------------------------------------------------------

class BaseUseDemoPage extends ConsumerWidget {
  final baseUseStateProvider = StateNotifierProvider<BaseUseStateProvider, BaseUseState>(
    (ref) => BaseUseStateProvider(),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 监听
    final provider = ref.watch(baseUseStateProvider);
    return Scaffold(
      appBar: AppBar(title: Text("基本使用案例")),
      backgroundColor: const Color(0xFFF6F7F9),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Text("通过点击按钮修改名称案例，初步使用 riverpod 状态管理"),
            SizedBox(height: 100),
            Text("当前名字:${provider.name}"),
            SizedBox(height: 20),
            AllenBtn(
              name: "点击修改名字",
              onTap: () {
                int value = Random().nextInt(100);
                // 修改
                ref.read(baseUseStateProvider.notifier).setName("小明$value号");
              },
            ),
            SizedBox(height: 30),
            Builder(builder: (_) {
              debugPrint('SuLogI：更新名称时，测试这里是否会被更新');
              return Text("经测试，更新名称时，虽然数据更新了，但是整个页面都会被刷新");
            }),
          ],
        ),
      ),
    );
  }
}
