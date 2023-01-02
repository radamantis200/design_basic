import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(children: const [
      TableRow(children: [
        SingleCard(icon: Icons.border_all, text: "General", color: Colors.blue),
        SingleCard(
            icon: Icons.car_rental,
            text: "Transport",
            color: Colors.pinkAccent),
      ]),
      TableRow(children: [
        SingleCard(icon: Icons.shop, text: "Shopping", color: Colors.purple),
        SingleCard(icon: Icons.cloud, text: "Bill", color: Colors.purpleAccent),
      ]),
      TableRow(children: [
        SingleCard(
            icon: Icons.movie, text: "Entertainment", color: Colors.deepPurple),
        SingleCard(
            icon: Icons.food_bank_outlined,
            text: "Grocery",
            color: Colors.pinkAccent),
      ]),
    ]);
  }
}

class SingleCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const SingleCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
        chil: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(color: color, fontSize: 18),
      )
    ]));
  }
}

class BackgroundCard extends StatelessWidget {
  final Widget chil;
  const BackgroundCard({super.key, required this.chil});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: chil,
          ),
        ),
      ),
    );
  }
}
