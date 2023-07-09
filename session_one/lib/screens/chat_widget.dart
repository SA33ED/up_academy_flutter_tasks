import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Mohammed Saeed",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text("Photo"),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Text("Friday"),
          ],
        ),
      ),
    );
  }
}
