import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child:
              isloading
                  ? SizedBox(
                    height: 25,
                    width: 25,
                    child: const CircularProgressIndicator(color: Colors.black),
                  )
                  : const Text(
                    'save',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
