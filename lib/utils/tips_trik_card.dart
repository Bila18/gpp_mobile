import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import '../models/tips_trik.dart';

class TipsTrikCard extends StatelessWidget {
  final int index;
  const TipsTrikCard(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Container(
        height: 400,
        width: 250,
        decoration: BoxDecoration(
          color: ColorPallete.box,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 204, 204, 204),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset.fromDirection(1.0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              tipsTrik[index].image,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
