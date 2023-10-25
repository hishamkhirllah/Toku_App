import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/object.dart';

class colors extends StatelessWidget {
  const colors({super.key});
  final List<ItemModel> colorlist = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'kuro',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiiero',
        enName: 'dusty_yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6D8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8E24AA),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorlist.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: colorlist[index],
            color: const Color(0xFF00cBFF),
          );
        },
      ),
    );
  }
}
