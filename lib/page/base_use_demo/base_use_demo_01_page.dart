import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/widgets/allen_btn.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 17:41
// usage ：基本使用案例 - 通过 StateProvider 修改单个数据
// ------------------------------------------------------

/// 继承于消费者组件，用来代替 有状态/无状态 组件，它使我们能够 阅读/更改 提供者的状态
class BaseUseDemo01Page extends ConsumerWidget {
  BaseUseDemo01Page({super.key});

  // 创建提供者，如果要监听改变，需要用到继承自 AlwaysAliveProviderBase 的 Providers，
  // StateNotifier 是不可变的
  final baseUseStateProvider1 = StateProvider((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 监听
    final count = ref.watch(baseUseStateProvider1);
    return Scaffold(
      appBar: AppBar(title: const Text("计数器案例")),
      backgroundColor: const Color(0xFFF6F7F9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            const SizedBox(height: 100),
            Text("当前点了几次:$count"),
            const SizedBox(height: 20),
            AllenBtn(
              name: "点击增加福报",
              onTap: () {
                // 修改
                ref.read(baseUseStateProvider1.notifier).state++;
              },
            ),
            const SizedBox(height: 30),
            Builder(builder: (_) {
              debugPrint('SuLogI：次数增加时，这里是否更新了');
              return const Text("经测试，次数增加时，虽然数据更新了，但是整个页面都会被刷新，如果想实现局部刷新，则用 Consumer 包括要更新的组件即可。");
            }),
          ],
        ),
      ),
    );
  }
}
