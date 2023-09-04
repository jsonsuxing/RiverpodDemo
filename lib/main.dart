import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/route/app_pages.dart';
import 'package:riverpod_demo/route/app_routes.dart';

void main() {
  // 为了能让组件读取 provider，我们需要将整个应用都包裹在 “ProviderScope” 组件内。这里也就是存储我们所有 provider 状态的地方。
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// 定义全局 context
  static GlobalKey<NavigatorState> navigatorState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorState,
      initialRoute: AppRoutes.root,
      routes: appPages,
    );
  }
}
