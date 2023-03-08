// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:uts_pm/Components/best_agents_item.dart';
import 'package:uts_pm/Components/circleItem.dart';
import 'package:uts_pm/Components/cities.dart';
import 'package:uts_pm/Components/staff_picks_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedLabelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "PSR"),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontFamily: "PSR"),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.orange,), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: 'TV News'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //text title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Estate", style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 25,
                        fontFamily: "PSR",
                      ),),
                      Text("Best discovery ever", style: TextStyle( 
                        fontSize: 12,
                        fontFamily: "PSR",
                        color: Colors.grey
                      ),),
                    ],),

                    Icon(Icons.notifications_outlined)
                  ],),
                  

                  SizedBox(height: 25,),

                  Row(
                    children: [
                      Text("Categories",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "PSR",
                        fontSize: 20
                      ),),
                    ],
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  circleItem(title: "Hutan", icon: Icon(Icons.air, size: 28,)),
                  SizedBox(width: 20,),
                  circleItem(title: "Toko", icon: Icon(Icons.shopify, size: 28)),
                  SizedBox(width: 20,),
                  circleItem(title: "Cargo", icon: Icon(Icons.car_repair, size: 28)),
                  SizedBox(width: 20,),
                  circleItem(title: "Weather", icon: Icon(Icons.cloud_outlined, size: 28)),
                  SizedBox(width: 20,),
                  circleItem(title: "Office", icon: Icon(Icons.local_post_office_outlined, size: 28)),
                  SizedBox(width: 20,),
                  circleItem(title: "Location", icon: Icon(Icons.location_on_outlined, size: 28)),
                  SizedBox(width: 20,),
                  circleItem(title: "Help", icon: Icon(Icons.help_outline, size: 28)),
                  SizedBox(width: 20,),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Staff Picks",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "PSR",
                    fontSize: 20
                  ),),
                ],
              ),
            ),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(width: 15,),
                staffPicksItem(
                  title: "Lagon Sky", 
                  height: "412 sq ft.", 
                  fee: "\$920"),
                SizedBox(width: 15,),
                staffPicksItem(
                  title: "Inn Parapat", 
                  height: "800 sq ft.", 
                  fee: "\$559"),
                SizedBox(width: 15,),
                staffPicksItem(
                  title: "Arman Village", 
                  height: "0 sq ft.", 
                  fee: "\$499"),
                SizedBox(width: 15,),
              ]),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Best Agents",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "PSR",
                    fontSize: 20
                  ),),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  bestAgents(name: "Abili", value: 190),
                  SizedBox(width: 15,),
                  bestAgents(name: "Andika", value: 123),
                  SizedBox(width: 15,),
                  bestAgents(name: "Syahlan", value: 111),
                  SizedBox(width: 15,),
                  bestAgents(name: "Ihsan", value: 450),
                  SizedBox(width: 15,),
                  bestAgents(name: "Ghaza", value: 250),
                  SizedBox(width: 15,),
                  bestAgents(name: "Ghaza2", value: 25),
                  SizedBox(width: 15,),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Cities",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "PSR",
                        fontSize: 20
                      ),),
                    ],
                  ),

                  SizedBox(height: 10,),

                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        cities(title: "Jakarta Selatan", value: 194),
                        SizedBox(height: 15,),
                        cities(title: "Bandung", value: 89400),
                        SizedBox(height: 15,),
                        cities(title: "Denpasar", value: 184000),
                        SizedBox(height: 15,),
                        cities(title: "Pulau Banyak", value: 8300),
                        SizedBox(height: 15,),
                        cities(title: "Singkil", value: 55),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),

            

          ]),
        ),
      ),
    );
  }
}