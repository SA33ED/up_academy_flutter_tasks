import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});
  static String id = "businessCard";
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 122,
          child: CircleAvatar(
            backgroundColor: Color(0xFF2B475E),
            radius: 120,
            backgroundImage: AssetImage("images/me.jpg"),
          ),
        ),
        Text(
          data["name"],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: 'Pacifico',
          ),
        ),
        Text(
          data["title"],
          style: const TextStyle(
            color: Color(0xFF6C8090),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(
          color: Color(0xFF6C8090),
          thickness: 1,
          indent: 60,
          endIndent: 60,
          height: 10,
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: const Icon(
              Icons.phone,
              size: 32,
              color: Color(0xFF2B475E),
            ),
            title: Text(
              '(+20) ${data['phone']}',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: const Icon(
              Icons.email,
              size: 32,
              color: Color(0xFF2B475E),
            ),
            title: Text(
              data["email"],
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
      ]),
    );
  }
}
