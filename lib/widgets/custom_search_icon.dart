import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(right: 20),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        // color: Colors.white.withOpacity(0.1),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: const Icon(Icons.search, color: Colors.white)),
    );
  }
}
