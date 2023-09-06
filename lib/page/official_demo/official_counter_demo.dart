import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/page/official_demo/official_counter_demo_state.dart';
import 'package:riverpod_demo/route/app_routes.dart';
import 'package:riverpod_demo/route/route_util.dart';
import 'package:riverpod_demo/widgets/allen_btn.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/6 12:47
// usage ：官方计数器案例
// ------------------------------------------------------

class OfficialCounterDemo extends ConsumerWidget {
  const OfficialCounterDemo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('官方计数器案例')),
      body: Center(
        child: Text('${ref.watch(officialCounterDemoStateProvider)}'),
      ),
      floatingActionButton: FloatingActionButton(
        // read方法是一个读取提供程序，而不监听它的实用程序
        onPressed: () => ref.read(officialCounterDemoStateProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
