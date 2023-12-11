import 'package:basic_increment/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Obx(() {
              return Text(controller.a.value.toString());
            }),
            GestureDetector(
              onTap: () {
                controller.a++;
              },
              child: Container(
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Add"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
