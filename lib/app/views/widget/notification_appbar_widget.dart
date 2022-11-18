import 'package:flutter/material.dart';

class NotificationsAppBar extends StatelessWidget {
  const NotificationsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.grey,
          ),
          const Positioned(
            right: 12,
            top: 10,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
