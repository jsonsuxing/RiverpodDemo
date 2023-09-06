// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'official_counter_demo_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$officialCounterDemoStateHash() =>
    r'7bf3b9cc01071a4a7a98e70fc87681f8732b9783';

/// 用 @riverpod 注释一个类，为你的应用程序定义一个新的共享状态，使用生成的[counterProvider]访问。
/// 这个类负责初始化状态(通过 [build] 方法)，并显示修改它的方法(cf [increment])
///
/// Copied from [OfficialCounterDemoState].
@ProviderFor(OfficialCounterDemoState)
final officialCounterDemoStateProvider =
    AutoDisposeNotifierProvider<OfficialCounterDemoState, int>.internal(
  OfficialCounterDemoState.new,
  name: r'officialCounterDemoStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$officialCounterDemoStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OfficialCounterDemoState = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
