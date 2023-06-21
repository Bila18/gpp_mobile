import 'package:flutter/material.dart';

import 'color_pallete.dart';

void popUp(BuildContext context, String img, String title,
    void Function() onTap) async {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            img,
            height: 250,
            width: 250,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 25),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: ColorPallete.primary,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Tidak',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorPallete.primary),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 25),
                    backgroundColor: ColorPallete.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: onTap,
                  child: const Text(
                    'Ya',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

void popUpOk(BuildContext context, String img, String title,
    void Function() onTap) async {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            img,
            height: 250,
            width: 250,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: onTap,
                  child: const Text(
                    'Ya',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
