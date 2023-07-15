import 'package:flutter/material.dart';
import 'package:task_four/helpers/constants.dart';
import 'package:task_four/widgets/app_bar_options.dart';
import 'package:task_four/widgets/call.dart';
import 'package:task_four/widgets/chat.dart';
import 'package:task_four/widgets/status.dart';

// !Whatsapp App
void main(List<String> args) {
  runApp(const Whatsapp());
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(Icons.menu),
          backgroundColor: kPrimaryColor,
          title: const Text("Whatsapp"),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              color: kPrimaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppBarOption(
                      text: "Chats",
                      onTap: () {
                        setState(() {
                          x = 1;
                        });
                      }),
                  AppBarOption(
                      text: "Status",
                      onTap: () {
                        setState(() {
                          x = 2;
                        });
                      }),
                  AppBarOption(
                      text: "Calls",
                      onTap: () {
                        setState(() {
                          x = 3;
                        });
                      }),
                ],
              ),
            ),
            Expanded(
              child: x == 1
                  ? ListView.builder(
                      itemCount: 20,
                      itemBuilder: ((context, index) => const Chat()),
                    )
                  : x == 2
                      ? ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) => Status(
                            color: Colors.amber,
                          ),
                        )
                      : x == 3
                          ? ListView.builder(
                              itemCount: 20,
                              itemBuilder: ((context, index) =>
                                  Call(color: Colors.red)),
                            )
                          : const Text("Nothing To display"),
            )
          ],
        ),
      ),
    );
  }
}
