import 'package:flutter_svg/flutter_svg.dart';
import 'package:cultulingo/auth/firebase_helper.dart';
import 'package:cultulingo/auth/login.dart';
import 'package:cultulingo/auth/user.dart';
import 'package:cultulingo/components/input.dart';
import 'package:cultulingo/components/primarybtn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController UserUsername = TextEditingController();
  final TextEditingController UserPassword = TextEditingController();
  final TextEditingController ConfirmPassword = TextEditingController();
  final TextEditingController UserTlpn = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final dbHelper = FirebaseHelper();
  Future<void> saveUser() async {
    if (formKey.currentState?.validate() ?? false) {
      final newUser = Users(
        username: UserUsername.text,
        pass: UserPassword.text,
        tlpn: int.parse(UserTlpn.text),
      );

      await dbHelper.insertUser(newUser);
      List<Users> allUsers = await dbHelper.getAllUsers();
      allUsers.forEach((user) {
        print('User: ${user.toMap()}');
      });

      await dbHelper.saveUsersToTxt(context);

      // Navigasi ke halaman login setelah registrasi berhasil
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPageDart()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.3;
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F3F4),
        shape: const Border(
          bottom:
              BorderSide(width: 1.2, color: Color.fromARGB(255, 101, 101, 101)),
        ),
        title: Text(
          "Sign Up",
          style: GoogleFonts.jost(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            letterSpacing: 0.24,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth,
                            height: imageHeight,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: SvgPicture.asset(
                                "assets/auth/login.svg",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InputComp(
                      label: 'Username',
                      placeholder: "Masukkan Username",
                      controller:
                          UserUsername, // Menggunakan controller yang sesuai
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    InputComp(
                      label: 'Nomor Telepon',
                      placeholder: "Masukkan Nomor Telepon",
                      controller:
                          UserTlpn, // Menggunakan controller yang sesuai
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    InputComp(
                      label: 'Masukkan kata sandi',
                      placeholder: "Masukkan Password Kamu",
                      pass: true,
                      controller:
                          UserPassword, // Menggunakan controller yang sesuai
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    InputComp(
                      label: 'Konfirmasi kata sandi',
                      placeholder: "Masukkan kembali kata sandi",
                      pass: true,
                      controller: ConfirmPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password tidak boleh kosong";
                        } else if (value != UserPassword.text) {
                          return "Password tidak cocok";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    PrimaryButton(buttonText: "Simpan", onPressed: saveUser),
                    Opacity(
                      opacity: 0.70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah mempunyai Akun?",
                            style: GoogleFonts.jost(
                              color: Color(0xFF134CD2),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 0.28,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.jost(
                                color: Color(0xFF134CD2),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 0.28,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 254),
              ),
              child: Image.asset(
                "assets/bg-batik.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
