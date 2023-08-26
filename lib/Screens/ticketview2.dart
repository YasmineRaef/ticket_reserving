import 'package:first_app/utils/appstyles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView2 extends StatelessWidget {
  const TicketView2 ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 384,height: 170,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child:  Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink.shade200,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child:  Column(
                children: [
                  Row(
                    children: [
                      Text("PARIS",style: Edits.headLine3.copyWith(color: Colors.white),),
                      const Gap(30), const Icon(Icons.place),
                      const Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                      const Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                      const Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                      const Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                      const Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                      const Icon(Icons.place),const Gap(20),
                      Text("EGYPT",style: Edits.headLine3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      SizedBox(width: 140,child: Text("Charles de Gaulle",style: Edits.headLine4.copyWith(color: Colors.white),),),
                      Text("5,220 KM",style: Edits.headLine4.copyWith(color: Colors.white),),const Gap(50),
                      Text("Cairo Airport",style: Edits.headLine4.copyWith(color: Colors.white),),
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
              child:  Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined),const Gap(80),
                      Text("Departure time",style: Edits.headLine3.copyWith(color: Colors.black),),const Gap(80),
                      Icon(Icons.person),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      SizedBox(width: 125,child: Text("25 DEC",style: Edits.headLine4.copyWith(color: Colors.white),),),
                      Text("10:00:00 AM",style: Edits.headLine4.copyWith(color: Colors.white),),const Gap(75),
                      Text("1 ADULT",style: Edits.headLine4.copyWith(color: Colors.white),),
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
