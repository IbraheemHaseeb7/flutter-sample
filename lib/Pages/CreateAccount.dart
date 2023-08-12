import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sample/Widgets/Button.dart';



class CreateAcc extends StatefulWidget{
  @override
  CreateAccState createState() => CreateAccState();
  
}


class CreateAccState extends State<CreateAcc>{
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


    final beforePrefix = Padding(
                      padding: const EdgeInsets.only(left: 4,right: 5,bottom: 1),
                      child: Icon(IconlyLight.profile,color: Colors.grey, size: 20,),
                    );
    final afterPrefix = Padding(
                      padding: const EdgeInsets.only(left: 4,right: 5,bottom: 1),
                      child: Icon(IconlyLight.profile,color: Color(0xffFF6154), size: 20,),
                    );
                  


    return Scaffold(
     backgroundColor: Color(0xff2a2a2a),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
         Padding(
           padding: EdgeInsets.only(top: 35),
           child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color:Color(0xFF353535) ,
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF353535), width: 3),
                ),
                child: IconButton(
                  icon: Icon(IconlyLight.arrow_left_2,size: 24,color: Colors.grey,),
         
                 
                  onPressed: () {
                   Navigator.pop(context);
                  },
                  alignment: Alignment.center,
                ),
              ),
         ),

         Row(
          
           children: [
           Container(
            height: 35,
            width: screenWidth*0.17,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffFF6154),width: 4)
              )
            ), 
           ),
             Container(
              height: 35,
              width: screenWidth - (screenWidth*0.17),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFF353535),width: 4)
                )
              ),

             ),
           ],
         ),


         SizedBox(height: 70,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Container(
              width: screenWidth-30,
              padding: EdgeInsets.only(left: 20,right: 2),
               child: Text("Ready to create your profile First, what's your name?",   
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Recoleta",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5
                  ),
                  textAlign: TextAlign.center,
                  ),
             ),
             SizedBox(height: 10,),
             Text("     This is how you'll appear on Paraiso",   
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Recoleta",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.5
                  ),
                  textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 56,),
                  Center(
                  child: Container(
                padding: const EdgeInsets.only(top: 20),
                width: screenWidth - 50,
             
                child: TextField(
                  focusNode: focus,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                   
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily:"Recoleta"),
                    hintText: "Enter your full name",
                    prefixIcon: focus.hasFocus ? afterPrefix : beforePrefix,
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide:
                          const BorderSide(color:  Color(0xffFF6154),),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide:
                          const BorderSide(color: Color(0xFF353535),),
                    ),
                  ),
                ),
              )),
         SizedBox(height: 30,),
         Button(name: "Continue", onPressed:(){}, width: 217,)
           ],
         ),

        ],
      ),


    );
  }

}