import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import '../models/spare_parts.dart';

class SparePartCard extends StatelessWidget {
  final int index;
  const SparePartCard(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Container(
        height: 225,
        width: 300,
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
        child: Column(
          children: [
            SizedBox(
              height: 180,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    spareParts[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(spareParts[index].title),
                  Text(spareParts[index].model),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
