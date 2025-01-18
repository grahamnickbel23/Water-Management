import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String heading;

  const MyButton({
    super.key, 
    required this.onTap, 
    required this.heading
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 143, vertical: 25),
          child: Text(
            heading,
            style:const TextStyle(color: Colors.white, fontSize: 19),
          )),
    );
  }
}
