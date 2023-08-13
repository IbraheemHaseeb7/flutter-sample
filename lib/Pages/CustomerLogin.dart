import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sample/Pages/CreateAccount.dart';
import 'package:sample/Pages/Email.dart';
import 'package:sample/Pages/Slides.dart';

void main() {
  runApp(const CustomerLogin());
}

class CustomerLogin extends StatefulWidget {
  const CustomerLogin({super.key});

  @override
  State<CustomerLogin> createState() => _CustomerLogin();
}

class _CustomerLogin extends State<CustomerLogin> {
  Color Passborder = const Color(0x0ebdbdbd);
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff2a2a2a),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 0, 5, 0),
                    child: Image(
                      image: AssetImage("lib\\Assets\\logo.png"),
                      height: 66,
                      width: 53,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Paraiso",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 40,
                      color: Color(0xffe5e5e5),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "Welcome back",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: 'Recoleta',
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 25,
                  color: Color(0xffe5e5e5),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text(
                "Use your credentials below and login to your account",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: 'Recoleta',
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 17,
                  color: Color(0xffbdbdbd),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: SizedBox(
                height: 60,
                width: 377,
                child: TextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: const TextStyle(
                    fontFamily: 'Recoleta',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xffe5e5e5),
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      IconlyLight.message,
                      color: Color(0xffff6154),
                      size: 18,
                    ), // Prefix icon
                    suffixIcon: const Icon(Icons.check_circle,
                        color: Color(0xffff6154)), // Suffix icon
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Color(0xffff6154), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Color(0xffff6154), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Color(0xffff6154), width: 1),
                    ),
                    hintText: "example@gmail.com",
                    hintStyle: const TextStyle(
                      fontFamily: 'Recoleta',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xffe5e5e5),
                    ),
                    filled: true,
                    fillColor: const Color(0xff353535),
                    isDense: false,
                    contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                height: 60,
                width: 377,
                child: TextField(
                  controller: TextEditingController(),
                  onTap: () {
                    Passborder = const Color(0xffff6154);
                    setState(() {});
                  },
                  obscureText: true,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: const TextStyle(
                    fontFamily: 'Recoleta',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xffe5e5e5),
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(IconlyLight.lock,
                        color: Color(0xffff6154), size: 22),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Passborder, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Passborder, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Passborder, width: 1),
                    ),
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Recoleta',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xffe5e5e5),
                    ),
                    filled: true,
                    fillColor: const Color(0xff353535),
                    isDense: false,
                    contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Checkbox(
                      onChanged: (value) {
                        if (value == true) {
                          checkValue = true;
                        } else {
                          checkValue = false;
                        }
                        setState(() {});
                      },
                      activeColor: const Color(0xff353535),
                      autofocus: false,
                      checkColor: const Color(0xffff6154),
                      hoverColor: const Color(0x42000000),
                      splashRadius: 20,
                      value: checkValue,
                    ),
                  ),
                  const Text(
                    "Remember me",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Color(0xffe5e5e5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(117, 0, 0, 0),
                    child: MaterialButton(
                      onPressed: () {},
                      color: const Color(0x00ffffff),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      padding: const EdgeInsets.all(0),
                      textColor: const Color(0xffe5e5e5),
                      height: 40,
                      minWidth: 140,
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Recoleta',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 110),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Slides()),
                  );
                },
                color: const Color(0xffff6154),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Color(0xffff6154), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                textColor: const Color(0xffe5e5e5),
                height: 52,
                minWidth: 285,
                child: const Text(
                  "Log into your account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Text(
                      "Don’t have an account?",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontFamily: 'Recoleta',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xffe5e5e5),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Slides()));
                    },
                    color: const Color(0x00ffffff),
                    elevation: 0,
                    textColor: const Color(0xffe5e5e5),
                    height: 40,
                    minWidth: 90,
                    child: const Text(
                      "Sign Up here",
                      style: TextStyle(
                        color: const Color(0xffff6154),
                        fontSize: 15,
                        fontFamily: 'Recoleta',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
