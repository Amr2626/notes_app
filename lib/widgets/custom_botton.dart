import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          'save',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
