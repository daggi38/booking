import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pj2/models/house.dart';

class HouseTile extends StatelessWidget {
  final house newhouse;
  HouseTile({super.key, required this.newhouse});
  final List<String> imgList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.asset(newhouse.imagepath[0])
        CarouselSlider(
          disableGesture: true,
          options: CarouselOptions(
            viewportFraction: 1,
            enlargeCenterPage: true,
            height: 200,
            enableInfiniteScroll: false,
          ),
          items: newhouse.imagepath
              .map(
                (item) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.asset(
                        item,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 231, 230, 226),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text("House"),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                               Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration( color: Color.fromARGB(255, 231, 230, 226),
                            
                            borderRadius: BorderRadius.circular(100)),
                            child: Icon(Iconsax.like)),
                            SizedBox(width: 10,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(  color: Color.fromARGB(255, 231, 230, 226),
                                
                                borderRadius: BorderRadius.circular(100)),
                                child: Icon(Iconsax.like)),
                            ],
                          ),
                            
                        ],
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newhouse.housename.toString().toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'RS ',
                  style: TextStyle(color: Colors.orange[200], fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(
                      text: newhouse.price,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Iconsax.location1),
              Text(
                newhouse.location,
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(
                Icons.bed,
                color: Colors.orange,
              ),
              Text(
                newhouse.numberofbeds + " Beds",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.bathroom,
                color: Colors.orange,
              ),
              Text(
                newhouse.numberofbaths + " Baths",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.area_chart,
                color: Colors.orange,
              ),
              Text(
                newhouse.area + " m2",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }
}
