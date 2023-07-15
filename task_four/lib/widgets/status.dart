// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
   Status({super.key,required this.color});
  Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Padding(
                  padding:const EdgeInsets.only(right: 10.0),
                  child: CircleAvatar(
                    backgroundColor: color,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "Mohammed Saeed",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("Just Now")
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
