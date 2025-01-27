import 'package:flutter/material.dart';

class MyMeater extends StatelessWidget {
  const MyMeater({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          )
        ],
      ),
    );
  }
}
