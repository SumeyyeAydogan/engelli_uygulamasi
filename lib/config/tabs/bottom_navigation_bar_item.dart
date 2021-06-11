import 'package:engelli_uygulama/tabs.dart';
import 'package:flutter/material.dart';



BottomNavigationBarItem bottomNavigationBarItem(assets, context, currentIndex, index) {
  var size = MediaQuery.of(context).size;
  return BottomNavigationBarItem(
    icon: Image.asset(
      assets,
      width: index == 3
          ? size.width * 0.06
          : index == 2
              ? size.width * 0.045
              : size.width * 0.05,
      fit: BoxFit.contain,
      color: currentIndex == index ? Color(0xffFE8106) : Color(0xffBABABA),
    ),
    backgroundColor: Color(0xffFE8106),
  );
}
