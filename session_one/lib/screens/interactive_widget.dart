import 'package:flutter/material.dart';

class InteractiveWidgets extends StatelessWidget {
  const InteractiveWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Interactive Widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // print("object");
              },
              child: const Text("Inkwell"),
            ),
            ElevatedButton(
              onPressed: () {
                // print("object2");
              },
              child: const Text("Hi"),
            ),
          ],
        ),
      ),
    );
  }
}
