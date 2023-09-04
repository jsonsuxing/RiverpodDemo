import 'package:flutter/material.dart';
import 'package:riverpod_demo/route/app_routes.dart';
import 'package:riverpod_demo/route/route_util.dart';
import 'package:riverpod_demo/widgets/allen_btn.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 10:54
// usage ：首页
// ------------------------------------------------------

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: _mainColumn(context),
      ),
    );
  }

  Widget _mainColumn(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        const SizedBox(height: 15),
        AllenBtn(
          name: '基本使用案例 - 计时器',
          onTap: () {
            RouteUtil.push(routeName: AppRoutes.base_use_demo_01);
          },
        ),
        const SizedBox(height: 15),
        //
        AllenBtn(
          name: '基本使用案例 - 修改对象',
          onTap: () {
            RouteUtil.push(routeName: AppRoutes.base_use_demo_02);
          },
        ),
        const SizedBox(height: 15),
        //
        AllenBtn(
          name: '代码自动生成（官方）案例',
          onTap: () {
            RouteUtil.push(routeName: AppRoutes.auto_generator_demo);
          },
        ),
      ],
    );
  }
}
