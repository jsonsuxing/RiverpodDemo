import 'package:flutter_riverpod/flutter_riverpod.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 14:02
// usage ：基本使用案例的状态类处理逻辑
// ------------------------------------------------------

class BaseUseState {
  final String name;
  BaseUseState({this.name = "小明"});
}

class BaseUseStateProvider extends StateNotifier<BaseUseState> {
  /// 这里实现父类泛型的数据类
  BaseUseStateProvider() : super(BaseUseState());

  /// 修改名称
  void setName(String value) {
    state = BaseUseState(name: value);
  }
}
