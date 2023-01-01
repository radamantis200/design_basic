import 'package:flutter/material.dart';
import 'package:design_1_app/widgets/custom_title.dart';
import 'package:design_1_app/widgets/button_section.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/images/image.jpg')),
          const CustomTitle(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.all(5),
            child: const Text(
                textAlign: TextAlign.justify,
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
          )
        ],
      ),
    );
  }
}
