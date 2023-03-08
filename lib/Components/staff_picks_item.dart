import 'package:flutter/material.dart';

class staffPicksItem extends StatelessWidget {
  final String title;
  final String height;
  final String fee;
  const staffPicksItem({ Key? key, required this.title, required this.height, required this.fee }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Container(decoration: BoxDecoration(
                  color: Colors.grey, 
                  borderRadius: BorderRadius.circular(15),
                ),
                  child: SizedBox(height: 125,width: 200,),
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(
                        fontFamily: "PSR",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                      
                      Text(height, style: TextStyle(
                        fontFamily: "PSR",
                        fontSize: 12,
                        color: Colors.grey
                      ))
                    ],
                  ), 

                  Text(fee, style: TextStyle(
                    color: Color.fromARGB(255, 255, 168, 38), 
                    fontSize: 18,
                    fontFamily: "PSR",
                    fontWeight: FontWeight.bold
                  ),)
                ],)
              ]),
            ),
          );
  }
}