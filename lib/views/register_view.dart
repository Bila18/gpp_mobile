import 'package:flutter/material.dart';

import '../utils/color_pallete.dart';
import 'login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nama = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _hp = TextEditingController();
  final TextEditingController _prshn = TextEditingController();
  final TextEditingController _jbtn = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool showPassword = false;

  @override
  void dispose() {
    _nama.dispose();
    _email.dispose();
    _hp.dispose();
    _prshn.dispose();
    _jbtn.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Image.asset('assets/images/register.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    //Text Field untuk nama lengkap
                    TextFormField(
                      controller: _nama,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nama Lengkap',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Text Field untuk email
                    TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      // Validator untuk user input email agar user memasukan email yang valid dan email tidak boleh kosong
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email tidak boleh kosong';
                        } else if (!RegExp(
                                r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$')
                            .hasMatch(value)) {
                          return 'Masukkan email yang valid';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Text Field untuk no.telepon
                    TextFormField(
                      controller: _hp,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'No. Telepon',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Text Field untuk nama perusahaan
                    TextFormField(
                      controller: _prshn,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Perusahaan',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Text Field untuk nama lengkap
                    TextFormField(
                      controller: _jbtn,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Jabatan',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Text field untuk password
                    TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Kata Sandi',
                        labelStyle: TextStyle(
                          color: ColorPallete.textField,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // Fungsi untuk membuat icon mata untuk menampilkan atau menyembunyikan password
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: Icon(
                            showPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      obscureText: showPassword,
                      // Validator untuk user input password agar minimal pw 6 karakter dan inputan tidak boleh kosong
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Kata sandi tidak boleh kosong';
                        } else if (value.length < 6) {
                          return 'Kata sandi harus 6 karakter';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 50),
                  backgroundColor: ColorPallete.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      },
                      child: Text(
                        'Masuk',
                        style: TextStyle(color: ColorPallete.primary),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
