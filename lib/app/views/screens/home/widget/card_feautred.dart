import 'package:flutter/material.dart';
import 'package:project3/app/views/util/app_colors.dart';

class CardFeautred extends StatelessWidget {
  const CardFeautred(
      {Key? key, required this.image, this.index, required this.noRight})
      : super(key: key);

  final List<String>? image;
  final int? index;
  final bool noRight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(image![index ?? 0]),
                    fit: BoxFit.cover)),
            margin: noRight
                ? const EdgeInsets.all(5)
                : const EdgeInsets.only(right: 10),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "\$55.00",
            style: TextStyle(color: ColorApp.marone),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("Wemon T-Shirt",
              style: TextStyle(color: ColorApp.marone))
        ],
      ),
    );
  }
}
