import 'package:flutter/material.dart';
import 'package:riverpod_demo/init/address_book_page.dart';
import 'package:riverpod_demo/init/find_page.dart';
import 'package:riverpod_demo/init/home_page.dart';
import 'package:riverpod_demo/init/mine_page.dart';

// ------------------------------------------------------
// author：Allen
// date  ：2023/6/18 15:23
// usage ：主页
// ------------------------------------------------------

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  InitPageState createState() => InitPageState();
}

class InitPageState extends State<InitPage> {
  // 当前选择的底部索引
  int _currentIndex = 0;

  // 底部导航栏的配置数据
  final List<MainPageItemModel> _items = [
    MainPageItemModel(iconData: Icons.tag_faces, name: "案例"),
    MainPageItemModel(iconData: Icons.public, name: "通信录"),
    MainPageItemModel(iconData: Icons.explore, name: "发现"),
    MainPageItemModel(iconData: Icons.pending, name: "我的"),
  ];

  final List<Widget> _pages = [
    const HomePage(),
    const AddressBookPage(),
    const FindPage(),
    const MinePage(),
  ];

  /// 更新选择的底部索引
  void _updateCurrentIndex(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 14,
        iconSize: 26,
        items: _items.map((e) => BottomNavigationBarItem(icon: Icon(e.iconData), label: e.name)).toList(),
        onTap: _updateCurrentIndex,
      ),
      body: _pages[_currentIndex],
    );
  }
}

class MainPageItemModel {
  final IconData iconData;
  final String name;

  MainPageItemModel({
    required this.iconData,
    required this.name,
  });
}
