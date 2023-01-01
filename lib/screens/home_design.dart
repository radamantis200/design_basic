import 'package:flutter/material.dart';

import 'package:design_1_app/widgets/card_table.dart';
import 'package:design_1_app/widgets/custom_botton_navigation.dart';
import 'package:design_1_app/widgets/page_title.dart';

import '../widgets/background.dart';

class HomeDesign extends StatelessWidget {
  const HomeDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          // Background
          Background(),
          // Home body
          HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottonNavigation(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [PageTitle(), CardTable()]),
    );
  }
}
