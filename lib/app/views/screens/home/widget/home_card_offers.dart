import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/app_images.dart';

class CardOffers extends StatelessWidget {
  const CardOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: double.infinity,
                  color: ColorApp.eT3,
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(Images.imageMask7),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Halloween Offer",
                  style: TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "20% off in\nour All products",
                  style: TextStyle(
                      color: Colors.black, fontSize: 17, letterSpacing: 0.2),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 75,
                    height: 22,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: ColorApp.colors.elementAt(0),
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "SHOP NOW",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-10, 20),
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: 1,
                    decorator: const DotsDecorator(
                        activeColor: Colors.blue, color: Colors.grey),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
