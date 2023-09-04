import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/page/base_use_demo/base_use_demo_02_state.dart';
import 'package:riverpod_demo/widgets/allen_btn.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 13:57
// usage ：基本使用案例 - 通过 StateNotifierProvider 修改一个类型的数据
// ------------------------------------------------------

/// 继承于消费者组件，用来代替 有状态/无状态 组件，它使我们能够 阅读/更改 提供者的状态
class BaseUseDemo02Page extends ConsumerWidget {
  BaseUseDemo02Page({super.key});

  // 创建提供者
  final baseUseStateProvider1 = StateNotifierProvider<BaseUseStateProvider, BaseUseDemo02State>(
    (ref) => BaseUseStateProvider(),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 监听
    final provider = ref.watch(baseUseStateProvider1);
    return Scaffold(
      appBar: AppBar(title: const Text("基本使用案例")),
      backgroundColor: const Color(0xFFF6F7F9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            const Text("通过点击按钮修改名称案例，初步使用 riverpod 状态管理"),
            const SizedBox(height: 100),
            Text("当前名字:${provider.name}"),
            const SizedBox(height: 20),
            AllenBtn(
              name: "点击修改名字",
              onTap: () {
                int value = Random().nextInt(100);
                // 修改
                ref.read(baseUseStateProvider1.notifier).setName("小明$value号");
              },
            ),
            const SizedBox(height: 30),
            Builder(builder: (_) {
              debugPrint('SuLogI：更新名称时，测试这里是否会被更新');
              return const Text("经测试，更新名称时，虽然数据更新了，但是整个页面都会被刷新，如果想实现局部刷新，则用 Consumer 包括要更新的组件即可。");
            }),
          ],
        ),
      ),
    );
  }
}
