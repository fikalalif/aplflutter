import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/navigation/home_page.dart';

import '../constant/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green600,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 147),
            Container(
              width: 81.6,
              height: 71,
              child: Image.asset('assets/images/backgrounds/login/logo.png'),
            ),
            SizedBox(height: 45),
            Text(
              'Learn from anything and anywhere',
              style: GoogleFonts.sora(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 103),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.green100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 24, left: 24, bottom: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(
                                  Icons.email_outlined), // Ikon email bawaan
                              filled: true, // Latar belakang berwarna
                              fillColor: Colors.white, // Warna latar belakang
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    12.0), // Membuat sudut melengkung
                                borderSide: BorderSide
                                    .none, // Menghilangkan garis border
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 24, left: 24, bottom: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(Icons
                                  .lock_outline_rounded), // Ikon email bawaan
                              filled: true, // Latar belakang berwarna
                              fillColor: Colors.white, // Warna latar belakang
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    12.0), // Membuat sudut melengkung
                                borderSide: BorderSide
                                    .none, // Menghilangkan garis border
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 325,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.green900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                      (route) => false);
                            },
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 325,
                          height: 48,
                          child: ElevatedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: AppColors.green100,
                              side: BorderSide(
                                  color: AppColors.green900, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                                (route) => false,
                              );
                            },
                            child: Text(
                              "Sign In with Google",
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Atau',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 2),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'daftar',
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              'sekarang jika belum memiliki akun',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 52),
                        Text(
                          '© Abdul Muhith',
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
