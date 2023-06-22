import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import 'package:gpp_mobile/utils/widgets.dart';
import 'package:image_picker/image_picker.dart';

import '../home_view.dart';

class FormReportView2 extends StatefulWidget {
  const FormReportView2({super.key});

  @override
  State<FormReportView2> createState() => _FormReportView2State();
}

class _FormReportView2State extends State<FormReportView2> {
  String _partsCondition1 = '';
  String _partsCondition2 = '';
  String _partsCondition3 = '';
  String _partsCondition4 = '';
  String _partsCondition5 = '';

  //Take Photo
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
      body: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Zona 2',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Undercarriage, Swing & Attachment Area',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                //No.1
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '1. LH Final Drive',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Take Oil Sample'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text(
                                  'Good Condition',
                                ),
                                activeColor: ColorPallete.primary500,
                                value: 'Good Condition',
                                groupValue: _partsCondition1,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition1 = val!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text('Correction Made'),
                                activeColor: ColorPallete.primary500,
                                value: 'Correction Made',
                                groupValue: _partsCondition1,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition1 = val!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        RadioListTile(
                          dense: true,
                          title: const Text('Bad Condition'),
                          activeColor: ColorPallete.primary500,
                          value: 'Bad Condition',
                          groupValue: _partsCondition1,
                          onChanged: (val) {
                            setState(() {
                              _partsCondition1 = val!;
                            });
                          },
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'Bukti Foto :',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            getImage();
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(115, 40),
                            backgroundColor: ColorPallete.primary,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Foto',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //No. 2
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '2. LH Final Drive',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Check engine LH final drive oil level and add oil if decrease level'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text(
                                  'Good Condition',
                                ),
                                activeColor: ColorPallete.primary500,
                                value: 'Good Condition',
                                groupValue: _partsCondition2,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition2 = val!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text('Correction Made'),
                                activeColor: ColorPallete.primary500,
                                value: 'Correction Made',
                                groupValue: _partsCondition2,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition2 = val!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        RadioListTile(
                          dense: true,
                          title: const Text('Bad Condition'),
                          activeColor: ColorPallete.primary500,
                          value: 'Bad Condition',
                          groupValue: _partsCondition2,
                          onChanged: (val) {
                            setState(() {
                              _partsCondition2 = val!;
                            });
                          },
                        ),
                      ],
                    ),
                    // const Padding(
                    //     padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    //     child: Text(
                    //       'Bukti Foto :',
                    //       style: TextStyle(fontWeight: FontWeight.w600),
                    //     )),
                    // Padding(
                    //   padding:
                    //       const EdgeInsets.only(top: 10, right: 10, left: 10),
                    //   child: Align(
                    //     alignment: Alignment.centerLeft,
                    //     child: ElevatedButton.icon(
                    //       icon: const Icon(
                    //         Icons.camera_alt_outlined,
                    //         color: Colors.black,
                    //       ),
                    //       onPressed: () {},
                    //       style: ElevatedButton.styleFrom(
                    //         fixedSize: const Size(115, 40),
                    //         backgroundColor: ColorPallete.primary,
                    //         alignment: Alignment.center,
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //       ),
                    //       label: const Padding(
                    //         padding: EdgeInsets.all(8.0),
                    //         child: Text(
                    //           'Foto',
                    //           style: TextStyle(
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.black),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                //No.3
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '3. LH Final Drive',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Check LH final drive oil 3.3 liter'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text(
                                  'Good Condition',
                                ),
                                activeColor: ColorPallete.primary500,
                                value: 'Good Condition',
                                groupValue: _partsCondition3,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition3 = val!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text('Correction Made'),
                                activeColor: ColorPallete.primary500,
                                value: 'Correction Made',
                                groupValue: _partsCondition3,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition3 = val!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        RadioListTile(
                          dense: true,
                          title: const Text('Bad Condition'),
                          activeColor: ColorPallete.primary500,
                          value: 'Bad Condition',
                          groupValue: _partsCondition3,
                          onChanged: (val) {
                            setState(() {
                              _partsCondition3 = val!;
                            });
                          },
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'Bukti Foto :',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            getImage();
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(115, 40),
                            backgroundColor: ColorPallete.primary,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Foto',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //No.4
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '4. LH Final Drive',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Inspect for crack, wear of sprocket & final drive LH'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text(
                                  'Good Condition',
                                ),
                                activeColor: ColorPallete.primary500,
                                value: 'Good Condition',
                                groupValue: _partsCondition4,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition4 = val!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text('Correction Made'),
                                activeColor: ColorPallete.primary500,
                                value: 'Correction Made',
                                groupValue: _partsCondition4,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition4 = val!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        RadioListTile(
                          dense: true,
                          title: const Text('Bad Condition'),
                          activeColor: ColorPallete.primary500,
                          value: 'Bad Condition',
                          groupValue: _partsCondition4,
                          onChanged: (val) {
                            setState(() {
                              _partsCondition4 = val!;
                            });
                          },
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'Bukti Foto :',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            getImage();
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(115, 40),
                            backgroundColor: ColorPallete.primary,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Foto',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //No.5
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '5. LH Final Drive',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Inspect for leaking, crack, wear, missing'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text(
                                  'Good Condition',
                                ),
                                activeColor: ColorPallete.primary500,
                                value: 'Good Condition',
                                groupValue: _partsCondition5,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition5 = val!;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                dense: true,
                                title: const Text('Correction Made'),
                                activeColor: ColorPallete.primary500,
                                value: 'Correction Made',
                                groupValue: _partsCondition5,
                                onChanged: (val) {
                                  setState(() {
                                    _partsCondition5 = val!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        RadioListTile(
                          dense: true,
                          title: const Text('Bad Condition'),
                          activeColor: ColorPallete.primary500,
                          value: 'Bad Condition',
                          groupValue: _partsCondition5,
                          onChanged: (val) {
                            setState(() {
                              _partsCondition5 = val!;
                            });
                          },
                        ),
                      ],
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'Bukti Foto :',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            getImage();
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(115, 40),
                            backgroundColor: ColorPallete.primary,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Foto',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        popUpOk(context, 'assets/images/success.png',
                            'Data berhasil disimpan!', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeView(),
                            ),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(135, 35),
                        backgroundColor: ColorPallete.primary,
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Selesai',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
