import 'package:cultulingo/auth/firebase_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cultulingo/auth/signup.dart';
import 'package:cultulingo/splash/levels.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cultulingo/components/input.dart';

import 'package:cultulingo/components/primarybtn.dart';

class LoginPageDart extends StatefulWidget {
  const LoginPageDart({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageDart> {
  final TextEditingController UserUsername = TextEditingController();
  final TextEditingController UserPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final dbHelper = FirebaseHelper(); // Inisialisasi DatabaseHelper

  // Fungsi login untuk pengguna
  Future<void> loginUser() async {
    if (formKey.currentState?.validate() ?? false) {
      // Cari pengguna berdasarkan username
      final user = await dbHelper.getUserByUsername(UserUsername.text);

      if (user != null && user.pass == UserPassword.text) {
        // Jika username dan password cocok, arahkan ke halaman Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LevelsPage()),
        );
      } else {
        // Jika username atau password salah, tampilkan pesan error
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Username atau Password Salah!'),
            backgroundColor: Colors.red,
          ),
        );
      }
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
          bottom: BorderSide(
            width: 1.2,
            color: Color.fromARGB(255, 101, 101, 101),
          ),
        ),
        title: Text(
          "Login",
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: 0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputComp(
                                label: 'Username',
                                placeholder: "Masukkan Username",
                                controller:
                                    UserUsername, // Menggunakan controller yang sesuai
                              ),
                              const SizedBox(height: 25),
                              InputComp(
                                label: 'Password',
                                placeholder: "Masukkan Password Kamu",
                                controller:
                                    UserPassword, // Menggunakan controller yang sesuai
                                pass: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Column(
                      children: [
                        PrimaryButton(
                            buttonText: "Masuk", onPressed: loginUser),
                        Opacity(
                          opacity: 0.60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Belum mempunyai Akun?",
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
                                  "Buat Akun",
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
