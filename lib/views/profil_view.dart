import 'package:flutter/material.dart';
import 'package:gpp_mobile/utils/widgets.dart';
import 'package:gpp_mobile/views/home_view.dart';
import '../utils/color_pallete.dart';
import '../widgets/box_text_field.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nama = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _hp = TextEditingController();
  final TextEditingController _prshn = TextEditingController();
  final TextEditingController _jbtn = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Edit Profile',
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
        actions: [
          TextButton(
            onPressed: () {
              popUpOk(context, 'assets/images/success.png',
                  'Profil Berhasil Diperbarui!', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                );
              });
            },
            child: Text(
              'Simpan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: ColorPallete.primary,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nama Lengkap',
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
                        return 'Nama lengkap tidak boleh kosong';
                      }
                      return null;
                    },
                    'Nabila Adinda',
                    controller: _nama,
                    keyboard: TextInputType.name,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'E-Mail',
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
                        return 'Email tidak boleh kosong';
                      } else if (!RegExp(
                        r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
                      ).hasMatch(value)) {
                        return 'Masukkan email yang valid';
                      }
                      return null;
                    },
                    'bila23@gmail.com',
                    controller: _email,
                    keyboard: TextInputType.emailAddress,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Nomor Telepon',
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
                        return 'Nomor telpon tidak boleh kosong';
                      }
                      return null;
                    },
                    '0858147569',
                    controller: _hp,
                    keyboard: TextInputType.phone,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Perusahaan',
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
                        return 'Nama perusahaan tidak boleh kosong';
                      }
                      return null;
                    },
                    'United Tractors',
                    controller: _prshn,
                    keyboard: TextInputType.name,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Jabatan',
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
                        return 'Nama jabatan tidak boleh kosong';
                      }
                      return null;
                    },
                    'Magang Kampus Merdeka',
                    controller: _jbtn,
                    keyboard: TextInputType.name,
                    action: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
