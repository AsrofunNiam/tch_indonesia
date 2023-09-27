import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClinicScreenFooter extends StatelessWidget {
  ClinicScreenFooter({super.key, this.price});
  int? price;
  final currencyFormatter = NumberFormat('#,##0.00', 'ID');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 150,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 209, 209, 209),
                blurRadius: 4,
                spreadRadius: 2)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Consultation Price',
                style: TextStyle(color: Colors.black38, fontSize: 20),
              ),
              Text(
                'Rp. ${currencyFormatter.format(price ?? 0)}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(235, 126, 133, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Booking Appointment',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
