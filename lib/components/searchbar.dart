import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NewSearchBar extends StatelessWidget {
  const NewSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 1),
      child: Container(
        decoration: BoxDecoration(
             color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
       
        child: TextField(
        
          decoration: InputDecoration(
            
            border: InputBorder.none,
           
      hintText: "Search address, city, location",
      hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Iconsax.search_favorite_14),
          ),
        ),
      ),
    );
  }
}
