import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/page/auto_generator_demo/user.dart';
import 'package:riverpod_demo/widgets/allen_btn.dart';

// 第一步：执行命令 dart run build_runner

// 第二步：先写 xxx.g.dart 文件名称，这个自定义，写的时候会报错，这个不用管，和 json_serializable 插件相似
part 'auto_generator_demo_02_page.g.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/5 15:48
// usage ：使用 riverpod_generator 自动生成代码案例，模拟修改用户个人信息
// ------------------------------------------------------

// 第三步：定义提供者
// 提供者通过在函数中标注 @riverpod 来定义，必须为顶级类型，后面的 _$User 是生成的 xxx.g.dart 文件中的 typedef 类型
// 注：在生成代码冲突的时候，执行
// flutter pub run build_runner build --delete-conflicting-outputs
// 会删除原来的代码重新生成新的 xxx.g.dart 文件

@riverpod
class UserState extends _$UserState {
  UserState();

  /// 重写父类 build 方法，可以在此设置默认数据，构造中的 用户1 会被 build 方法中的 用户2 代替
  /// build 返回的类型就是父类 state 的具体类型
  @override
  User build() {
    return const User();
  }

  /// 更新用户名称
  void updateName(String value) {
    state = state.copyWith(name: value);
  }

  /// 修改用户年龄
  void updateAge(int value) {
    state = state.copyWith(age: value);
  }
}

// 特别提醒：
// 生成  xxx.g.dart 文件之后，要关闭 dart run build_runner watch（Ctrl + C），否则一直监听着代码，会把生成的 xxx.g.dart 文件删除

class AutoGeneratorDemo02Page extends ConsumerWidget {
  const AutoGeneratorDemo02Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User user = ref.watch(userStateProvider);
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
            const Text("当前用户信息"),
            const SizedBox(height: 20),
            Text("用户名称：${user.name}、\n用户年龄:${user.age}"),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                AllenBtn(
                  name: "点击修改用户名字",
                  onTap: () {
                    int value = Random().nextInt(100);
                    // 修改
                    ref.read(userStateProvider.notifier).updateName("用户新名字$value");
                  },
                ),
                AllenBtn(
                  name: "点击修改用户年龄",
                  onTap: () {
                    int value = Random().nextInt(100);
                    // 修改
                    ref.read(userStateProvider.notifier).updateAge(value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
