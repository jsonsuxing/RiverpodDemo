import 'package:flutter/material.dart';
import 'package:riverpod_demo/init/init_page.dart';
import 'package:riverpod_demo/page/base_use_demo/base_use_demo_page.dart';
import 'package:riverpod_demo/route/app_routes.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 11:09
// usage ：App 路由配置表
// ------------------------------------------------------

final Map<String, Widget Function(BuildContext, {dynamic arguments})> appPages = {
  AppRoutes.root: (BuildContext context, {arguments}) => const InitPage(),
  AppRoutes.base_use_demo: (BuildContext context, {arguments}) => BaseUseDemoPage(),
};
