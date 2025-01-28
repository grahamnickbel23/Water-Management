import 'package:flutter/material.dart';
import 'package:myapp/components/my_ON-OFF_container.dart';
import 'package:myapp/components/my_drawer.dart';
import 'package:myapp/components/my_meater.dart';

class DarlingPage extends StatelessWidget {
  const DarlingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: MyContainer(heading: 'Check Machine Status'),
            ),
            const SizedBox(height: 20),
            // function fot water Level
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: MyMeater(waterLevel: '55%'),
            ),
            // function for AI prediction is here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent, width: 2),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: const Column(
                  children: [
                    // text inside
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.star_rounded),
                        ),
                        // Difaarence Between two element
                        SizedBox(width: 4),
                        Text(
                          'AI ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 48, 44, 44)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 175),
                          child: Text(
                            'prediction',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 48, 44, 44)),
                          ),
                        ),
                      ],
                    ),
                    // Predicted test
                    Text(
                      'water will be overflowed with in next 1d 14hrs',
                      style: TextStyle(
                          color: Color.fromARGB(255, 90, 84, 84),
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // for two another container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // humidity
                  Container(
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    // get text
                    child: const Center(
                      child: Column(
                        children: [
                          // humidity reading
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: const Text(
                              'Humidity',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // humidity reading
                          Padding(
                            padding:
                                EdgeInsets.only(top: 3, left: 10, bottom: 3),
                            child: Text(
                              '65%',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // temparature
                  Container(
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    // get text
                    child: const Center(
                      child: Column(
                        children: [
                          // humidity reading
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: const Text(
                              'Temp. (C)',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // humidity reading
                          Padding(
                            padding:
                                EdgeInsets.only(top: 3, left: 10, bottom: 3),
                            child: Text(
                              '31',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
