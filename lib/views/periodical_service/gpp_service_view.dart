import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gpp_mobile/models/periode_service.dart';
import 'package:gpp_mobile/models/spare_parts.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import 'package:gpp_mobile/views/periodical_service/service_report_view.dart';

class GppServiceView extends StatefulWidget {
  const GppServiceView({super.key});

  @override
  State<GppServiceView> createState() => _GppServiceViewState();
}

class _GppServiceViewState extends State<GppServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GPP Service Report',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Text(
                'Pilih periode service terlebih dahulu.',
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold, height: 1.15),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceReport(periodeService.elementAt(index)),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorPallete.primary500,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              periodeService[index].periode,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              itemCount: periodeService.length,
            ),
          ],
        ),
      ),
    );
  }
}
