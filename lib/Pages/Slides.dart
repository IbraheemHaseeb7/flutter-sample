import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sample/Pages/CreateAccount.dart';
import 'package:sample/Pages/Email.dart';

class Slides extends StatefulWidget {
  Slides({super.key});

  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> with TickerProviderStateMixin {
  double barValue = 0.25;
  late AnimationController controller;
  PageController pageController = PageController();

  void nextPage() {
    barValue = barValue + 0.25;
    setState(() {
      controller.animateTo(barValue,
          duration: const Duration(milliseconds: 200), curve: Curves.ease);
    });
    pageController.nextPage(
        duration: const Duration(milliseconds: 250), curve: Curves.ease);
  }

  @override
  void initState() {
    controller = AnimationController(
      value: barValue,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: const Color(0xff2a2a2a),
          bottom: PreferredSize(
              preferredSize: Size.zero,
              child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return LinearProgressIndicator(
                      backgroundColor: const Color.fromARGB(104, 189, 189, 189),
                      color: const Color(0xffFF6154),
                      value: controller.value,
                    );
                  })),
          leadingWidth: 200,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(33, 189, 189, 189),
                child: IconButton(
                  icon: const Icon(
                    IconlyLight.arrow_left_2,
                    size: 24,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  alignment: Alignment.center,
                ),
              )
            ],
          )),
      body: PageView(
          controller: pageController,
          children: [CreateAcc(nextPage: nextPage), Email(nextPage: nextPage)]),
    );
  }
}
