import 'package:flutter/material.dart';

class circleItem extends StatelessWidget {

  final String title;
  final icon;

  const circleItem({ Key? key, required this.title, required this.icon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: icon,
                ),
              ),
              SizedBox(height: 8,),
              Text(title, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "PSR",
                fontSize: 12,
                letterSpacing: 0.5
              ),)
            ]),
          );
  }
}