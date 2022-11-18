import 'package:flutter/material.dart';

class CardAddress extends StatelessWidget {
  const CardAddress({Key? key, this.index}) : super(key: key);
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Chatkhil,Noakhali",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text(
                    "House no:\t",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "22",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text("Road no:\t"),
                  Text("7"),
                ],
              ),
            ],
          ),
          Radio(
            value: true,
            groupValue: index == 1 ? false : true,
            onChanged: (v) {},
            hoverColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
