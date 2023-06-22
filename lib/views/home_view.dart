import 'package:flutter/material.dart';
import 'package:gpp_mobile/models/spare_parts.dart';
import 'package:gpp_mobile/models/tips_trik.dart';
import 'package:gpp_mobile/utils/widgets.dart';
import 'package:gpp_mobile/views/info_gpt_view.dart';
import 'package:gpp_mobile/views/periodical_service/periodical_service_view.dart';
import 'package:gpp_mobile/views/profil_view.dart';
import 'package:gpp_mobile/views/spare_part_view.dart';
import '../utils/color_pallete.dart';
import '../utils/spare_part_card.dart';
import '../utils/tips_trik_card.dart';
import 'detail_spare_part.dart';
import 'detail_tips_trik.dart';
import 'login_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hi, Nabila!',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: ColorPallete.primary,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          height: 10,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1.5,
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileView(),
                            ),
                          );
                        },
                        contentPadding: const EdgeInsets.fromLTRB(45, 0, 40, 0),
                        leading: const Icon(
                          Icons.drive_file_rename_outline_outlined,
                          color: Colors.black,
                        ),
                        title: const Text(
                          'Edit Profil',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        ),
                        dense: true,
                        visualDensity:
                            const VisualDensity(vertical: -4, horizontal: -4),
                      ),
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1.5,
                      ),
                      ListTile(
                        onTap: () {
                          popUp(context, 'assets/images/logout.png',
                              'Apakah anda yakin ingin keluar?', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginView(),
                              ),
                            );
                          });
                        },
                        contentPadding: const EdgeInsets.fromLTRB(45, 0, 40, 0),
                        leading: const Icon(
                          Icons.logout_rounded,
                          color: Colors.black,
                        ),
                        title: const Text(
                          'Keluar Akun',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        ),
                        dense: true,
                        visualDensity:
                            const VisualDensity(vertical: -4, horizontal: -4),
                      ),
                    ],
                  ),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Bagian info gpt dan periodical service
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Apa yang ingin kamu lakukan?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoGPTView(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 135,
                          decoration: BoxDecoration(
                              color: ColorPallete.box,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Info GPT',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PeriodicalServiceView(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 135,
                          decoration: BoxDecoration(
                              color: ColorPallete.box,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Periodical Service',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Bagian Spare Part
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Spare Part',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SparePartView(),
                            ),
                          );
                        },
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(
                            color: ColorPallete.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    // Expanded dan SizeBox digunakan agar tidak overflow
                    Expanded(
                      child: SizedBox(
                        height: 225,
                        //Code untuk menampilkan list dari Spare part card
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSpareParts(
                                    spareParts.elementAt(index),
                                  ),
                                ),
                              );
                            },
                            child: SparePartCard(index),
                          ),
                          itemCount: spareParts.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Bagian Tips & Trik
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Text(
                    'Tips & Trik',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 400,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailTipsview(
                                    tipsTrik.elementAt(index),
                                  ),
                                ),
                              );
                            },
                            child: TipsTrikCard(index)),
                      ),
                    ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
