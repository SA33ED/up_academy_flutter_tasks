import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});
  static String id = "businessCard";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xFF2B475E),
      body:
           Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 122,
          child: CircleAvatar(
            backgroundColor: Color(0xFF2B475E),
            radius: 120,
            backgroundImage: AssetImage("images/me.jpg"),
          ),
        ),
        Text(
          'Mohammed Saeed',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: 'Pacifico',
          ),
        ),
        Text(
          'FLUTTER DEVEOLOPER',
          style: TextStyle(
            color: Color(0xFF6C8090),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: Color(0xFF6C8090),
          thickness: 1,
          indent: 60,
          endIndent: 60,
          height: 10,
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              size: 32,
              color: Color(0xFF2B475E),
            ),
            title: Text(
              '(+20) 01032180690',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: Icon(
              Icons.email,
              size: 32,
              color: Color(0xFF2B475E),
            ),
            title: Text(
              'mohammedsaeed892002@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ]),
    );
  }
}
