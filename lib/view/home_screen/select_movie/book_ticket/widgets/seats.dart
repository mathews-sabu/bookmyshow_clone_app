// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:bookmyshow_clone_app/view/payment_screen/payment_screen.dart';
import 'package:flutter/material.dart';

class Seats extends StatefulWidget {
  const Seats({super.key});

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: List.generate(
              11,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => PaymentScreen(),
                        //     ));
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Please read these important terms and conditions for internet booking."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "1. Seat layout page for Aashirvad cineplexx is for representational purposes only and actual seat layout might vary."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "2. Tickets once purchased cannot be cancelled, exchanged, or refunded."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "3. Outside food and beverages are not allowed inside the cinema premises."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "4. Smoking is strictly prohibited inside the theatre premises."),
                                  Text(
                                      "5. If a customer consumes alcohol, they will not be allowed inside the premises and the tickets will not be refunded."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "6. For 3D movies, there will be an additional non-refundable 30/- rupees for 3D glass."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "7. Please purchase tickets for children older than 3 years."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "8. Recording of a film through mobile or camera is strictly prohibited and is a punishable offence."),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentScreen(),
                                          ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.red),
                                        width: double.infinity,
                                        child: Center(
                                            child: Text(
                                          "Make Payment",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Center(
                            child: Text(
                          "${index + 1}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: index % 2 == 0
                                ? Colors.grey.withOpacity(.7)
                                : index % 3 == 0
                                    ? Colors.transparent
                                    : Colors.green),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
