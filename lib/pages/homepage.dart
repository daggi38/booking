import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:pj2/catagories.dart/catagories.dart';
import 'package:pj2/components/bottomnavbar.dart';
import 'package:pj2/components/housetile.dart';
import 'package:pj2/components/searchbar.dart';
import 'package:pj2/models/house.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;

  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  List<String> catagories = [
        "All",
        "Flat",
        "House",
        "Plaza",
        "Plot",
  ];
  List houselist =[
    house(numberofbeds: "4", area: "200", housename: "The White Abo", imagepath: ["lib/images/house.jpg","lib/images/flat.jpg"], numberofbaths: "4",price: "8000",location: "  33, laxmi palace,S V Road Near..."),

  house(numberofbeds: "4", area: "200", housename: "The White Abo", imagepath: ["lib/images/house.jpg","lib/images/flat.jpg"], numberofbaths: "4",price: "8000",location: "  33, laxmi palace,S V Road Near...")

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(height: 90, child: Bottomnav()),
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              "Agent",
              style: TextStyle(fontSize: 30),
            ),
            Image.asset(
              "lib/images/okicon.png",
              height: 50,
              width: 50,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Iconsax.notification1,
              color: Colors.orange,
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewSearchBar(),
      
            Container(
            height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagories.length,
                itemBuilder: (context, index) =>Cata(label: catagories[index],
                  
                ),
              ),
            ),



            
            Container(
              height:500,
              
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
              
            
            width:MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
              itemCount: houselist.length,
              itemBuilder: (context, index)=>Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 350,
                  width: 350,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),),
                  child: HouseTile(newhouse: houselist[index])),
              )))
          ],
        ),
      ),
    );
  }
}
