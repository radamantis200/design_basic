import 'package:flutter/material.dart';
import 'package:design_1_app/widgets/custom_button.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: "CALL"),
          CustomButton(icon: Icons.route, text: "ROUTE"),
          CustomButton(icon: Icons.share, text: "SHARE")
        ],
      ),
    );
  }
}
