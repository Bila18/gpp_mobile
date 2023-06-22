import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';

class InvoicePartView extends StatefulWidget {
  const InvoicePartView({super.key});

  @override
  State<InvoicePartView> createState() => _InvoicePartViewState();
}

class _InvoicePartViewState extends State<InvoicePartView> {
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
    );
  }
}
