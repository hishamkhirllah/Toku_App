import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  const ItemModel(
      {this.image,
      required this.sound,
      required this.jpName,
      required this.enName});
  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
