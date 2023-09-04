import 'package:flutter/material.dart';

// ------------------------------------------------------
// author：苏醒
// date  ：2023/9/4 10:59
// usage ：我的页
// ------------------------------------------------------
class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top),
            const Text("我的"),
          ],
        ),
      ),
    );
  }
}
