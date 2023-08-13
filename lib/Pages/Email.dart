import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sample/Widgets/Button.dart';

class Email extends StatefulWidget {
  Function() nextPage;
  Email({super.key, required this.nextPage});

  @override
  EmailState createState() => EmailState();
}

class EmailState extends State<Email> {
  FocusNode focus = FocusNode();

  @override
  void initState() {
    super.initState();
    focus.addListener(() {
      setState(() {
        // Update your state here based on focus changes
      });
    });
  }

  @override
  void dispose() {
    focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    const beforePrefix = Padding(
      padding: EdgeInsets.only(left: 20, right: 5, bottom: 1),
      child: Icon(
        IconlyLight.message,
        color: Colors.grey,
        size: 20,
      ),
    );
    const afterPrefix = Padding(
      padding: EdgeInsets.only(left: 20, right: 5, bottom: 1),
      child: Icon(
        IconlyLight.message,
        color: Color(0xffFF6154),
        size: 20,
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xff2a2a2a),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth - 30,
                padding: const EdgeInsets.only(left: 20, right: 2),
                child: const Text(
                  "Let's keep your account secure. What's your backup email?",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Recoleta",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "     This is how you'll recover on Paraiso",
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Recoleta",
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.5),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 56,
              ),
              Center(
                  child: Container(
                padding: const EdgeInsets.only(top: 20),
                width: screenWidth - 50,
                child: TextField(
                  focusNode: focus,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff353535),
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontFamily: "Recoleta"),
                    hintText: "Enter your backup email",
                    prefixIcon: focus.hasFocus ? afterPrefix : beforePrefix,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: const BorderSide(
                        color: Color(0xffFF6154),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF353535),
                      ),
                    ),
                  ),
                ),
              )),
              const SizedBox(
                height: 30,
              ),
              Button(
                icon: const Icon(
                  IconlyLight.arrow_right_2,
                  color: Color(0xffe5e5e5),
                ),
                name: "Continue",
                onPressed: () {
                  widget.nextPage();
                },
                width: 217,
              )
            ],
          ),
        ],
      ),
    );
  }
}
