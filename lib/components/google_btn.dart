import 'package:flutter/material.dart';

class GoogleBtn extends StatelessWidget {
  final Function()? onTap;
  const GoogleBtn({
    super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child:  Image.asset('assets/images/google.png', 
          height: 100.0,),
        ),
      ),
    );
  }
}