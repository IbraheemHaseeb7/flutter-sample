import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Button extends StatelessWidget {
  final String name;
  late EdgeInsets margin;
  late double width;
  late Icon icon;
  final Function() onPressed;
  Button({
    super.key,
    this.width = 300,
    required this.name,
    required this.onPressed,
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
          child: Row(
            children: [
              SizedBox(width: 34,),
              Text(
                
                name,
                
                style: const TextStyle(
                    fontSize: 18, color: Color(0xffe5e5e5), fontFamily: "Recoleta"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Icon(IconlyLight.arrow_right_2,color: Colors.white,),
              )
            ],
          )),
    );
  }
}
