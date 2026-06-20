import 'package:flutter/material.dart';

class Tabbutton extends StatelessWidget {
  final String icon;
    final String selectIcon;
    final VoidCallback onTap;
    final bool isActive;
  const Tabbutton({super.key, required this.icon, required this.selectIcon, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset((isActive ? selectIcon : icon), height: 25, width: 25, ),
          SizedBox(height: isActive ? 8:12,),
          if(isActive)
          Container(width: 4, height: 4, decoration: BoxDecoration(
            color: Color.fromRGBO(142, 164, 241, 1.0),
            borderRadius: BorderRadius.circular(2)
          ),)
        ],
      ),
    );
  }
}