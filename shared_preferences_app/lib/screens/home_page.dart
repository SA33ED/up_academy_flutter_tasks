
import 'package:flutter/material.dart';
import 'package:shared_preferences_app/widgets/custom_text.dart';
import 'package:shared_preferences_app/widgets/custom_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Save Objects"),
      ),
      body: Column(
        children: [
          CustomTextField(
            title: "Name",
          ),
          CustomTextField(title: "Age"),
          CustomTextField(title: "Location"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Save")),
              ElevatedButton(onPressed: () {}, child: const Text("Load")),
              ElevatedButton(onPressed: () {}, child: const Text("Clear")),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  title: "Name",
                ),
                CustomText(
                  title: "Age",
                ),
                CustomText(
                  title: "Location",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
