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
        title: const Text('Home Page', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: MyContainer(heading:'Cheak Meachine Status'),
            ),
            // A conatiner for widget
           SizedBox(height: 20),
            MyMeater(
              waterLevel:'99%',
            )
          ],
        ),
      ),
    );
  }
}
