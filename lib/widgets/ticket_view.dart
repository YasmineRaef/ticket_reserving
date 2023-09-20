
import 'package:first_app/utils/appstyles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class TicketView extends StatelessWidget {
 final String Departure_Airport ,Arrival_Airport,Departure_City,Arrival_City,Distance,Date,Departure_Time,Passengers_No;
   const TicketView({Key? key,  required this.Departure_Airport, required this.Arrival_Airport, required this.Departure_City, required this.Arrival_City, required this.Distance, required this.Date, required this.Departure_Time, required this.Passengers_No}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 384,height: 170,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink.shade200,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(Departure_City,style: Edits.headLine3.copyWith(color: Colors.white),),
                      const Gap(40), const Icon(Icons.place),
                      for (int i=0;i<5;i++)const Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                      const Icon(Icons.place),const Gap(20),
                      Text(Arrival_City,style: Edits.headLine3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      SizedBox(width: 140,child: Text(Departure_Airport,style: Edits.headLine4.copyWith(color: Colors.white),),),
                      Text(Distance,style: Edits.headLine4.copyWith(color: Colors.white),),const Gap(50),
                      Text(Arrival_Airport,style: Edits.headLine4.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),//Showing Blue part of ticket ;)
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade700,borderRadius: const BorderRadius.only(bottomLeft: Radius.elliptical(20, 20),
                  bottomRight: Radius.elliptical(20, 20))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined),const Gap(80),
                      Text("Departure time",style: Edits.headLine3.copyWith(color: Colors.black),),const Gap(80),
                      const Icon(Icons.person),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      SizedBox(width: 125,child: Text(Date,style: Edits.headLine4.copyWith(color: Colors.white),),),
                      Text(Departure_Time,style: Edits.headLine4.copyWith(color: Colors.white),),const Gap(75),
                      Text(Passengers_No,style: Edits.headLine4.copyWith(color: Colors.white),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

