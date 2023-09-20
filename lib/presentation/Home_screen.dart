
import 'package:first_app/utils/appstyles.dart';
import 'package:first_app/widgets/ticket_view.dart';
import 'package:flutter/material.dart';
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
                  TicketView(Departure_Airport: 'John F. Kennedy', Arrival_Airport:'Cairo Airport' , Departure_City: 'NYC', Arrival_City: 'EGYPT', Distance: '5,733 mi', Date: '1 JAN', Departure_Time: '08:00:00 PM', Passengers_No: '1 ADULT'),
                 Gap(10),
                TicketView(Departure_Airport: 'Charles de Gaulle', Arrival_Airport: 'Cairo Airport', Departure_City: 'PARIS', Arrival_City: 'EGYPT', Distance: '5,220 km', Date: '25 DEC', Departure_Time: '10:00:00 AM', Passengers_No: '1 ADULT'),
                 Gap(10),
                TicketView(Departure_Airport: 'Borg El-Arab', Arrival_Airport: 'Luxor Airport', Departure_City: 'ALEX', Arrival_City: 'LUXOR', Distance: '887.5 km', Date: '1 SEP', Departure_Time: '06:30:00 PM', Passengers_No: '1 ADULT'),
                ],
          ),
      ),
    ],
    ),
    );
  }
}
