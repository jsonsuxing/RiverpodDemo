import 'package:flutter/material.dart';
import 'package:riverpod_demo/main.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/6/27 11:52
// usage ：路由跳转工具类
// ------------------------------------------------------

class RouteUtil {
  /// 页面进栈
  static Future push({String routeName = "", Object? arguments}) async {
    BuildContext? context = MyApp.navigatorState.currentState?.context;
    if (context == null) return;
    return await Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  /// 页面出栈
  static void pop({result}) {
    BuildContext? context = MyApp.navigatorState.currentState?.context;
    if (context == null) return;
    Navigator.pop(context, result);
  }

  static Object? getArguments(BuildContext context) {
    return ModalRoute.of(context)?.settings.arguments;
  }
}
