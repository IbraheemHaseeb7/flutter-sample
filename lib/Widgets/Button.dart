import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  late EdgeInsets margin;
  late double width;
  Icon? icon;
  final Function() onPressed;
  Button({
    super.key,
    this.width = 300,
    required this.name,
    required this.onPressed,
    this.icon,
    this.margin = const EdgeInsets.all(0),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: 52,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                  (states) => const Color(0xffFF6154))),
          onPressed: onPressed,
          child: icon == null
              ? Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffe5e5e5),
                      fontFamily: "Recoleta"),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xffe5e5e5),
                          fontFamily: "Recoleta"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4, left: 4),
                      child: icon,
                    )
                  ],
                )),
    );
  }
}
