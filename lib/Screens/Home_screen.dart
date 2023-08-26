import 'package:first_app/Screens/ticketview1.dart';
import 'package:first_app/Screens/ticketview2.dart';
import 'package:first_app/Screens/ticketview3.dart';
import 'package:first_app/utils/appstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Edits.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Welcome ",
                          style: Edits.headLine3,
                        ),
                        const Gap(10),
                        Text(
                          "Book Tickets",
                          style: Edits.headLine1,
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Icon(Icons.connecting_airports_sharp),
                      ],
                    )
                  ],
                ),
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),hintText: 'Search',iconColor: Colors.black,fillColor: Colors.black,
                    ),
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "UpComing Flight Tickets",
                      style: Edits.headLine2,
                    ),
                    InkWell(
                      onTap: () {
                        print("You are Tapped");
                      },
                      child: Text(
                        "View all",
                        style: Edits.headLine4,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(20),
          Container(
            child: const Column(
              children: [
                Row(
                  children: [
                    TicketView(),
                  ],
                ),
                Gap(20),
                Row(
                  children: [
                    TicketView2(),
                  ],
                ),
                Gap(20),
                Row(
                  children: [
                    TicketView3(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
