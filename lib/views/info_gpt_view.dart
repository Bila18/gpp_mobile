import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import 'package:gpp_mobile/utils/text.dart';

class InfoGPTView extends StatelessWidget {
  const InfoGPTView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Info GPT',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        backgroundColor: ColorPallete.primary,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 225,
                width: double.infinity,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/spare-parts/pic2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                bodyInfoGpt,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
