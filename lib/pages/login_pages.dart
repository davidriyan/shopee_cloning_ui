import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/bottom_nav_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xffFFFFFF),
        title: Text(
          'Login',
          style: GoogleFonts.roboto(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          SizedBox(
              height: 28,
              width: 30,
              child: SvgPicture.asset('assets/svgs/chart.svg')),
          const SizedBox(width: 10),
          SizedBox(
              height: 24,
              width: 23,
              child: SvgPicture.asset('assets/svgs/tandatanya.svg')),
          const SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 30),
            SizedBox(
                height: 57,
                width: 57,
                child: Image.asset('assets/images/shopee.png')),
            const SizedBox(height: 40),
            //membuat form yang menampung data email dan password
            Form(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: 378,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Email/Telephone/Username',
                        hintStyle: GoogleFonts.roboto(
                            fontSize: 18, color: const Color(0xffC4C4C4)),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset('assets/svgs/usericon.svg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: 378,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffCBCBCB))),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffCBCBCB))),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.roboto(
                              fontSize: 18, color: const Color(0xffC4C4C4)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                                'assets/svgs/lockpassword.svg'),
                          ),
                          suffixIcon: SizedBox(
                            width: 110,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                    'assets/svgs/obsecuretext.svg'),
                                const SizedBox(width: 10),
                                SvgPicture.asset('assets/svgs/reactangle.svg'),
                                const SizedBox(width: 10),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Lupa?',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                          color: const Color(0xff247AC7)),
                                    ))
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            )),
            const SizedBox(height: 33),
            //membuat fitur button login
            Container(
              width: 353,
              height: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xffE8E8E8)),
              child: Material(
                borderRadius: BorderRadius.circular(3),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(3),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const NavBar();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    'Login',
                    style: GoogleFonts.roboto(
                        fontSize: 15, color: const Color(0xffB0B0B0)),
                  )),
                ),
              ),
            ),
            //membuat row fitur (daftar dan Log in dengan no.handphone)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Daftar',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: const Color(0xff247AC7)),
                      )),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log in dengan no.handphone',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: const Color(0xff247AC7)),
                      ))
                ],
              ),
            ),
            // membuat list fitur button (lanjutkan dengan google, facebook, line, apple)
            const SizedBox(height: 23),
            InkWell(
              borderRadius: BorderRadius.circular(3),
              onTap: () {},
              child: Container(
                height: 41,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset('assets/svgs/googleicon.svg'),
                    ),
                    const Spacer(flex: 1),
                    Text(
                      'Lanjutkan dengan Google',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    const Spacer(flex: 1)
                  ],
                ),
              ),
            ),
            //button Facebook
            const SizedBox(height: 23),
            InkWell(
              borderRadius: BorderRadius.circular(3),
              onTap: () {},
              child: Container(
                height: 41,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset('assets/svgs/facebookicon.svg'),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      'Lanjutkan dengan Facebook',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    const Spacer(flex: 1)
                  ],
                ),
              ),
            ),
            // membuat button Line
            const SizedBox(height: 23),
            InkWell(
              borderRadius: BorderRadius.circular(3),
              onTap: () {},
              child: Container(
                height: 41,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset('assets/svgs/lineicon.svg'),
                    ),
                    const Spacer(flex: 1),
                    Text(
                      'Lanjutkan dengan Line',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    const Spacer(flex: 1)
                  ],
                ),
              ),
            ),
            //membuat button apple
            const SizedBox(height: 23),
            InkWell(
              borderRadius: BorderRadius.circular(3),
              onTap: () {},
              child: Container(
                height: 41,
                width: 353,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Image.asset('assets/images/apple.png'),
                    ),
                    const Spacer(flex: 1),
                    Text(
                      'Lanjutkan dengan Apple',
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    const Spacer(flex: 1)
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
