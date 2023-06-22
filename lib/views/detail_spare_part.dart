import 'package:flutter/material.dart';
import 'package:gpp_mobile/models/spare_parts.dart';

import '../utils/color_pallete.dart';

class DetailSpareParts extends StatelessWidget {
  final ModelSpareParts dataSpareParts;
  const DetailSpareParts(this.dataSpareParts, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail ${dataSpareParts.title}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: ColorPallete.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  dataSpareParts.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                dataSpareParts.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Model Parts : ${dataSpareParts.model}'),
            const SizedBox(
              height: 15,
            ),
            Text(
              dataSpareParts.subTitle,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
