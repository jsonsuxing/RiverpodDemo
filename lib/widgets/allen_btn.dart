import 'package:flutter/material.dart';

// ------------------------------------------------------
// author：Allen
// date  ：2023/7/15 19:00
// usage ：通用按钮
// ------------------------------------------------------

class AllenBtn extends StatelessWidget {
  /// 按钮名字
  final String name;

  final VoidCallback onTap;

  final Alignment alignment;

  final Color bgColor;

  const AllenBtn({
    Key? key,
    required this.name,
    required this.onTap,
    this.alignment = Alignment.center,
    this.bgColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints(minWidth: 100, minHeight: 35),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(name, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
