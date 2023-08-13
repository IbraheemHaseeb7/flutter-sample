import 'package:flutter/material.dart';
import 'package:sample/Pages/CreateAccount.dart';
import 'package:sample/Pages/Slides.dart';
import 'package:sample/Widgets/Button.dart';
import 'package:iconly/iconly.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final Color appBg = Color(0xff2a2a2a);

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFF6154)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyApp.appBg,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Image.asset(
                "lib/Assets/logo.png",
                width: 250,
                height: 250,
              ),
            ),
            const Text(
              "Parasio",
              style: TextStyle(
                  color: Color(0xffe5e5e5),
                  fontSize: 60,
                  fontFamily: "Recoleta"),
            ),
            Container(
              width: screenWidth * 0.8,
              child: const Text(
                "Get ready to tantalize your taste buds!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(125, 189, 189, 189),
                    fontSize: 20,
                    fontFamily: "Recoleta"),
              ),
            ),
            Button(
                icon: const Icon(
                  IconlyLight.arrow_right_2,
                  color: Color(0xffe5e5e5),
                ),
                name: "Get Started",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Slides()),
                  );
                },
                width: 217,
                margin: const EdgeInsets.only(top: 80))
          ],
        ),
      ),
    );
  }
}
