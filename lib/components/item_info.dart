import 'package:flutter/material.dart';

import '../models/object.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 21),
              ),
              Text(
                item.enName,
                style: const TextStyle(color: Colors.white, fontSize: 21),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        IconButton(
            onPressed: () async {
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ))
      ],
    );
  }
}
