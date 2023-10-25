import 'package:flutter/material.dart';
import 'package:toku_app/screens/number_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';
import 'colors.dart';
import 'family_member_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6D8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46332B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xFFEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembers();
              }));
            },
            text: 'Family Members',
            color: Colors.green[700],
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const colors();
              }));
            },
            text: 'colors',
            color: Colors.purple[600],
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Colors.blue[600],
          ),
        ],
      ),
    );
  }
}
