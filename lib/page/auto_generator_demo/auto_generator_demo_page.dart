import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// 第一步：执行命令 dart run build_runner watch

// 第二步：先写 xxx.g.dart 文件名称，这个自定义，写的时候会报错，这个不用管，和 json_serializable 插件相似
part 'auto_generator_demo_page.g.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 15:04
// usage ：使用 riverpod_generator 自动生成代码案例，官方案例
// ------------------------------------------------------

// 第三步：定义提供者
// 提供者通过在函数中标注 @riverpod 来定义，必须为顶级类型，
// 其中的入参刚开始可以随便定义一个类型比如 String，dart 监听到代码改变时会生成 xxx.g.dart 文件，在 xxx.g.dart 中 有一个 typedef 的类型，就是
// 其入参，取的是 方法名+Ref，所以可以在定义提供者的时候直接拿方法名加 Ref 即可
@riverpod
String label(LabelRef ref) {
  return 'Hello World';
}

// 特别提醒：
// 生成  xxx.g.dart 文件之后，要关闭 dart run build_runner watch（Ctrl + C），否则一直监听着代码，会把生成的 xxx.g.dart 文件删除

class AutoGeneratorDemoPage extends ConsumerWidget {
  const AutoGeneratorDemoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(labelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("代码自动生成案例")),
      backgroundColor: const Color(0xFFF6F7F9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            const Text("通过 riverpod_generator 插件实现代码自动生成案例"),
            const SizedBox(height: 50),
            Text("当前名字：$value"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
