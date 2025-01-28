import 'package:flutter/material.dart';
import 'package:myapp/pages/motor_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[600],
      child: Center(
        child: Column(
          children: [
            // get the logo
            DrawerHeader(
                child: Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, 
                    color: Colors.grey
                  ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
            )),

             // Home list tile
              Padding(
                padding:const EdgeInsets.only(top:65, left: 65),
                child: ListTile(
                  title: const Text(
                    'H O M E ',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  leading:const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Pop the drawer
                    Navigator.pop(context);
                  },
                ),
              ),

              // Motor list tile
              Padding(
                padding:const EdgeInsets.only(left: 60),
                child: ListTile(
                  title: const Text(
                    'M O T O R  ',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  leading:const Icon(
                    Icons.electric_bolt,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Pop the drawer
                    Navigator.pop(context);

                    // Navigate to motor page
                    Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const MotorPage(), 
                        ));
                  },
                ),
              ),

               // Account list tile
              Padding(
                padding:const EdgeInsets.only(left: 60),
                child: ListTile(
                  title: const Text(
                    'A C C O U N T  ',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  leading:const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Pop the drawer
                    Navigator.pop(context);
                  },
                ),
              ),

               // Privecy Policy list tile
              Padding(
                padding:const EdgeInsets.only(left: 60),
                child: ListTile(
                  title: const Text(
                    'Privecy Policy  ',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  leading:const Icon(
                    Icons.security,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Pop the drawer
                    Navigator.pop(context);
                  },
                ),
              ),

              // Logout list tile
              Padding(
                padding:const EdgeInsets.only(top: 125,left: 60),
                child: ListTile(
                  title: const Text(
                    'L O G O U T   ',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  leading:const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onTap: () {
                    // Pop the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
