import 'package:flutter/material.dart';

class cities extends StatelessWidget {
  final String title;
  final int value;
  const cities({ Key? key, required this.title, required this.value }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey
                          ),
                          child: SizedBox(width: 85, height: 65,),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(title, style: TextStyle(
                            fontFamily: "PSR",
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 5,),
                          Text("${value} Property", style: TextStyle(
                            fontFamily: "PSR",
                            fontSize: 14,
                            color: Colors.grey
                          ),),
                        ],)
                      ]),
                    ),
                  );
  }
}