import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import 'package:image_picker/image_picker.dart';

import 'form_report_view2.dart';

// enum PartsCondition { GoodCondition, CorrectionMade, BadCondition }

class FormReportView extends StatefulWidget {
  const FormReportView({super.key});

  @override
  State<FormReportView> createState() => _FormReportViewState();
}

class _FormReportViewState extends State<FormReportView> {
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
                        'Zona 1',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Engine, PTO, Hydraulick & Cabin Area',
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
                            '1. Engine Oil Sample',
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
                            '2. Engine Oil',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Check engine oil level'),
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
                            '3. Engine Oil',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Replace engine oil 23.1 liter'),
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
                            '4. Engine Oil',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Replace engine oil filter 1 pcs (PN. 6742-01-4540)'),
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
                            '5. Main Fuel Filter',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Replace fuel filter 1 pcs (PN. 600-319-3750)'),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FormReportView2(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: ColorPallete.primary,
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Berikutnya',
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
