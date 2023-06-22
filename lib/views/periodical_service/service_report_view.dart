import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/color_pallete.dart';
import 'package:gpp_mobile/views/periodical_service/form_report_view.dart';
import '../../models/periode_service.dart';
import '../../widgets/box_text_field.dart';
import 'package:intl/intl.dart';

class ServiceReport extends StatefulWidget {
  const ServiceReport(this.dataPeriode, {super.key});
  final ModelPeriodeService dataPeriode;

  @override
  State<ServiceReport> createState() => _ServiceReportState();
}

class _ServiceReportState extends State<ServiceReport> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _machineModel = TextEditingController();
  final TextEditingController _type = TextEditingController();
  final TextEditingController _serialNo = TextEditingController();
  final TextEditingController _engineModel = TextEditingController();
  final TextEditingController _serialEngine = TextEditingController();
  final TextEditingController _fsType = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _smr = TextEditingController();
  final TextEditingController _loc = TextEditingController();
  //Date Picker
  final curentDate = DateTime.now();

  @override
  void dispose() {
    _type.dispose();
    _machineModel.dispose();
    _serialNo.dispose();
    _engineModel.dispose();
    _serialEngine.dispose();
    _fsType.dispose();
    _date.dispose();
    _smr.dispose();
    _loc.dispose();
    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Field machine model
                    const Text(
                      'Machine Model',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'Model mesin tidak boleh kosong';
                        }
                        return null;
                      },
                      'PCF30F',
                      controller: _machineModel,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field type
                    const Text(
                      'Type',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'Type tidak boleh kosong';
                        }
                        return null;
                      },
                      '7',
                      controller: _type,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field Serial No.
                    const Text(
                      'Serial No',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'Serial Number tidak boleh kosong';
                        }
                        return null;
                      },
                      'J14166',
                      controller: _serialNo,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field Engine Model
                    const Text(
                      'Engine Model',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'Engine Model tidak boleh kosong';
                        }
                        return null;
                      },
                      'SAA4D95LE-3',
                      controller: _engineModel,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field Serial No. Engine
                    const Text(
                      'Serial No. Engine',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'Serial No. Engine tidak boleh kosong';
                        }
                        return null;
                      },
                      '151105',
                      controller: _serialEngine,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field FS Type
                    const Text(
                      'FS Type',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'FS Type tidak boleh kosong';
                        }
                        return null;
                      },
                      'Service',
                      controller: _fsType,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field Date Time
                    const Text(
                      'Date Time',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _date,
                      keyboardType: TextInputType.none,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: '18 Agustus 2021',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onTap: () async {
                        //Date Picker
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: curentDate,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(curentDate.year + 5),
                          builder: (context, child) {
                            return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                      primary: ColorPallete.primary500),
                                ),
                                child: child!);
                          },
                        );
                        if (selectedDate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('y-M-dd').format(selectedDate);
                          });
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field SMP
                    const Text(
                      'SMR',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'SMR tidak boleh kosong';
                        }
                        return null;
                      },
                      '6450',
                      controller: _smr,
                      keyboard: TextInputType.name,
                      action: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Field Location
                    const Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BoxTextField(
                      (value) {
                        if (value!.isEmpty) {
                          return 'Location tidak boleh kosong';
                        }
                        return null;
                      },
                      'Palembang Branch',
                      controller: _loc,
                      keyboard: TextInputType.streetAddress,
                      action: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FormReportView(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
