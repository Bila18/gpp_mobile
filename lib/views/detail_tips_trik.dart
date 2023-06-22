import 'package:flutter/material.dart';
import 'package:gpp_mobile/models/tips_trik.dart';
import 'package:photo_view/photo_view.dart';

class DetailTipsview extends StatelessWidget {
  final ModelTipsTrik dataTipsTrik;
  const DetailTipsview(this.dataTipsTrik, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: PhotoView(
                  // backgroundDecoration:
                  //     BoxDecoration(color: ColorPallete.formField),
                  imageProvider: AssetImage(
                dataTipsTrik.image,
              )
                  // Image.asset(
                  //   dataTipsTrik.image,
                  //   height: double.infinity,
                  //   fit: BoxFit.fill,
                  //   width: double.infinity,
                  // ),
                  ),
            ),
            SafeArea(
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white30, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
