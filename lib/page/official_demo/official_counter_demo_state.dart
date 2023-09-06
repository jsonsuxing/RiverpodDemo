import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'official_counter_demo_state.g.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/6 12:39
// usage ：官方计数器案例状态类
// ------------------------------------------------------

/// 用 @riverpod 注释一个类，为你的应用程序定义一个新的共享状态，使用生成的[counterProvider]访问。
/// 这个类负责初始化状态(通过 [build] 方法)，并显示修改它的方法(cf [increment])
@riverpod
class OfficialCounterDemoState extends _$OfficialCounterDemoState {
  /// 带有 @riverpod 注释的类必须定义一个 [build] 函数，该函数将返回共享状态的初始状态。
  /// 如果需要，这个函数返回 [Future] 或 [Stream] 是完全可以接受的，你也可以在这个方法上自由定义参数。
  @override
  int build() => 0;

  void increment() => state++;
}
