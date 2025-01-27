import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  // define all veriable
  final String heading;

  const MyContainer({super.key, required this.heading});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {

  // Initial Color
  Color secondContainerColor = Colors.orange;
  bool value = false; // Initially turned off

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              // fix the size of the container
              width: double.infinity,
              // get the border
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                    width: 2,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  // get the heading
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 90),
                    child: Text(
                      widget.heading,
                      style: const TextStyle(color: Colors.black, fontSize: 23),
                    ),
                  ),
                  // get the switch and ON / OFF function
                  SwitchListTile(
                    value: value,
                    onChanged: (bool newValue) {
                      print("Switch pressed: $newValue");
                      setState(() {
                        value = newValue; // Update the switch state
                        secondContainerColor =
                            newValue ? Colors.green : Colors.orange;
                      });
                    },
                    title: const Text(
                      'Press to turn ON',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //get another conatiner
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: double.infinity,
              height: 25,
              decoration: BoxDecoration(
                color: secondContainerColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 135),
                child: Text(
                  value ? 'Turned ON' : 'Turned OFF',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
