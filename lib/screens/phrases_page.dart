import 'package:flutter/material.dart';
import '../components/phrases_item.dart';
import '../models/object.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> colorlist = const [
    ItemModel(
        jpName: 'Anata wa kite imasu',
        enName: 'are_you_coming',
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Kōdoku o wasurenaide kudasai',
        enName: 'dont_forget_to_subscribe',
        sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how_are_you_feeling',
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i_love_anime',
        sound: 'assets/sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'I _ love _ programming',
        enName: 'i_love_programming',
        sound: 'assets/sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming_is_easy',
        sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what_is_your_name',
        sound: 'assets/sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Doko ni iku no',
        enName: 'where_are_you_going',
        sound: 'assets/sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: 'Hai, kimasu',
        enName: 'yes_im_coming',
        sound: 'assets/sounds/phrases/yes_im_coming.wav'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6D8),
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('phrases'),
      ),
      body: ListView.builder(
        itemCount: colorlist.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: colorlist[index],
            color: const Color.fromARGB(255, 138, 218, 238),
          );
        },
      ),
    );
  }
}
