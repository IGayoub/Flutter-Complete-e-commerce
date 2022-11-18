import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/app_images.dart';

class CardCheckout extends StatelessWidget {
  const CardCheckout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Row(
          children: [
            Container(
              width: 100,
              height: double.infinity,
              margin: const EdgeInsets.only(
                left: 5,
                top: 5,
                bottom: 5,
                right: 10,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(Images
                      .$images1[Random().nextInt(Images.$images1.length)]),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Women t-shirt",
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                        color: ColorApp.grey,
                      ),
                    ],
                  ),
                  const Text(
                    "Lotto.LTD",
                    style: TextStyle(color: ColorApp.grey, fontSize: 13),
                  ),
                  const Text(
                    "\$34.00",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Container(
                    width: 140,
                    color: const Color(0xffF6F6F6),
                    margin: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
