import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import 'package:gpp_mobile/views/periodical_service/gpp_service_view.dart';
import 'package:gpp_mobile/views/periodical_service/invoice_part_view.dart';

class PeriodicalServiceView extends StatefulWidget {
  const PeriodicalServiceView({super.key});

  @override
  State<PeriodicalServiceView> createState() => _PeriodicalServiceViewState();
}

class _PeriodicalServiceViewState extends State<PeriodicalServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Periodical Service',
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GppServiceView(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorPallete.primary500,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'GPP Service Report',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InvoicePartView(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorPallete.primary500,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Invoice Part',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
