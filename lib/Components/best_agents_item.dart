import 'package:flutter/material.dart';

class bestAgents extends StatelessWidget {
  final String name;
  final int value;
  const bestAgents({ Key? key, required this.name, required this.value }) : super(key: key);
//test
  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 226, 226, 226),
                      ), child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon (Icons.person),
                      ),
                      ),
                      SizedBox(height: 15,),
                      Text(name,style: TextStyle(
                        fontFamily: "PSR",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                      SizedBox(height: 15,),
                      Text("${value} sold",style: TextStyle(
                        fontFamily: "PSR",
                        fontSize: 15,
                      ),),
                    ]),
                  ),
                );
  }
}