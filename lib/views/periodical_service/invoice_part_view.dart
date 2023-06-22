import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../../utils/color_pallete.dart';

class InvoicePartView extends StatefulWidget {
  const InvoicePartView({super.key});

  @override
  State<InvoicePartView> createState() => _InvoicePartViewState();
}

class _InvoicePartViewState extends State<InvoicePartView> {
  File? image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    final XFile? imagePicked =
        await imagePicker.pickImage(source: ImageSource.camera);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice Part',
          style: TextStyle(
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
      body: Column(
        children: [
          image != null
              ? Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorPallete.primary500,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Belum mengambil gambar',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
          ElevatedButton.icon(
            onPressed: getImage,
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            label: const Text(
              'Kamera',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              // fixedSize: const Size(150, 50),
              backgroundColor: ColorPallete.primary,
              alignment: Alignment.center,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
