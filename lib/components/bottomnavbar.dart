import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
   int selectedindex = 0;

  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
            selectedItemColor: Colors.orange,
          
            
              currentIndex: selectedindex,
              onTap: onitemtapped,
              type: BottomNavigationBarType.fixed, // This is all you need!

              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 1,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.home,
                
                    ), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.heart), label: "Le"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add_circle_outlined,
                      size: 55,
                      color: Colors.orange,
                    ),
                    label: "Add"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Iconsax.messages_2,
                    ),
                    label: "Message"),
                BottomNavigationBarItem(
                    icon: Icon(
                      
                      Iconsax.more_circle,
                    ),
                    label: "More"),
              ]);
  }
}