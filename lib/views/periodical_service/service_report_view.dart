import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import '../../models/periode_service.dart';

class ServiceReport extends StatefulWidget {
  const ServiceReport(this.dataPeriode, {super.key});
  final ModelPeriodeService dataPeriode;

  @override
  State<ServiceReport> createState() => _ServiceReportState();
}

class _ServiceReportState extends State<ServiceReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.dataPeriode.periode,
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
    );
  }
}
