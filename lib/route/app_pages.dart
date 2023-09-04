import 'package:flutter/material.dart';
import 'package:riverpod_demo/init/init_page.dart';
import 'package:riverpod_demo/page/auto_generator_demo/auto_generator_demo_page.dart';
import 'package:riverpod_demo/page/base_use_demo/base_use_demo_01_page.dart';
import 'package:riverpod_demo/page/base_use_demo/base_use_demo_02_page.dart';
import 'package:riverpod_demo/route/app_routes.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 11:09
// usage ：App 路由配置表
// ------------------------------------------------------

final Map<String, Widget Function(BuildContext, {dynamic arguments})> appPages = {
  AppRoutes.root: (BuildContext context, {arguments}) => const InitPage(), // 初始页
  AppRoutes.base_use_demo_01: (BuildContext context, {arguments}) => BaseUseDemo01Page(), // 基本使用案例 - 通过 StateProvider 修改单个数据
  AppRoutes.base_use_demo_02: (BuildContext context, {arguments}) => BaseUseDemo02Page(), // 基本使用案例 - 通过 StateNotifierProvider 修改一个类型的数据
  AppRoutes.auto_generator_demo: (BuildContext context, {arguments}) => AutoGeneratorDemoPage(), // 使用 riverpod_generator 自动生成代码案例
};
