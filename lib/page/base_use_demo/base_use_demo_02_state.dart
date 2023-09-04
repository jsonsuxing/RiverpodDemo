import 'package:flutter_riverpod/flutter_riverpod.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 14:02
// usage ：基本使用案例的状态类处理逻辑 - 修改一个类型的数据
// ------------------------------------------------------

class BaseUseDemo02State {
  final String name;
  BaseUseDemo02State({this.name = "小明"});
}

class BaseUseStateProvider extends StateNotifier<BaseUseDemo02State> {
  /// 这里实现父类泛型的数据类
  BaseUseStateProvider() : super(BaseUseDemo02State());

  /// 修改名称
  void setName(String value) {
    state = BaseUseDemo02State(name: value);
  }
}
