import 'package:flutter/material.dart';

class CardDetailsPayment extends StatelessWidget {
  const CardDetailsPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Subtotal",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "\$160.00",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Discount",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "5%",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Shipping",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "\$10.00",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 2,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "\$162.00",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
