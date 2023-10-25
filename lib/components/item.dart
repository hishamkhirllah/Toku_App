import 'package:flutter/material.dart';

import '../models/object.dart';
import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xFFFEF6D8), child: Image.asset(item.image!)),
          Expanded(
              child: ItemInfo(
            item: item,
          ))
        ],
      ),
    );
  }
}
