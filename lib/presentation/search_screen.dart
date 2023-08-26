import 'package:first_app/utils/appstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchHere extends StatelessWidget {
  const SearchHere({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Edits.bgColor,
     body: ListView(
       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
       children:  [
         const Gap(40),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("What are \n you looking for ?",style: Edits.headLine1.copyWith(fontSize: 35),),
             const Icon(Icons.flutter_dash_rounded),
           ],
         ),
         const Gap(20),
         Container(
           decoration: BoxDecoration(
             color: Colors.grey.shade100,
             borderRadius: BorderRadius.circular(50),
           ),
           child: Row(
             children: [
               Container(
                   width: 175,
                 padding: const EdgeInsets.symmetric(vertical: 8),
                 decoration: const BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                 ),
                 child: const Center(child: Text("Airline Tickets")),

               ),
               Container(
                 width: 175,
                 padding: const EdgeInsets.symmetric(vertical: 8),
                 decoration: const BoxDecoration(
                   color: Colors.transparent,
                   borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                 ),
                 child: const Center(child: Text("Hotels")),
               ),
             ],
           ),
         ),
         const Gap(30),
         Container(
           padding: EdgeInsets.all(5),
           decoration:   BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.white,
           ),
           child:  TextField(
             decoration: InputDecoration(
               contentPadding: EdgeInsets.all(5),
               icon: Icon(Icons.flight_takeoff_rounded),hintText: 'Departure',
               iconColor: Colors.black,fillColor: Colors.black,
               hintStyle: Edits.textStyle2,
             ),
           ),
         ),
         const Gap(15),
         Container(
           padding: EdgeInsets.all(5),
           decoration:   BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.white,
           ),
           child:  TextField(
             decoration: InputDecoration(
               contentPadding: EdgeInsets.all(5),
               icon: Icon(Icons.flight_land_outlined),hintText: 'Arrival',
               iconColor: Colors.black,fillColor: Colors.black,
               hintStyle: Edits.textStyle2,
             ),
           ),
         ),
         const Gap(20),
         Container(
           padding: EdgeInsets.all(2),
           decoration:   BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: Colors.pink.shade300,
           ),
           child: Center(child: ElevatedButton(
               onPressed: () { print("I'm selected"); },
               style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink.shade300),
                 elevation: MaterialStateProperty.all(0),padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
               ),
               child: Text("Find Ticket",style: Edits.textStyle.copyWith(color: Colors.white),))),
         ),
       ],
     ),
    );
  }
}
