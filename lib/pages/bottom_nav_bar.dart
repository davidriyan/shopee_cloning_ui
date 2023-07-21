import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int indexPages = 0;
  List listIndex = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container()
  ];
  @override
  //membuat function untuk menampung variable index
  void initState() {
    indexPages = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listIndex[indexPages],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              indexPages = value;
            });
          },
          currentIndex: indexPages,
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xff505050),
          selectedLabelStyle: GoogleFonts.roboto(fontSize: 9),
          selectedItemColor: const Color(0xffED4D2D),
          unselectedLabelStyle: GoogleFonts.roboto(fontSize: 9),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/homeicon.svg'),
              label: 'Rekomendasi',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/feedicon.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/feedicon.svg',
                color: const Color(0xffED4D2D),
              ),
              label: 'feed',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svgs/shopeeliveicon.svg',
                ),
                activeIcon: SvgPicture.asset(
                  'assets/svgs/shopeeliveicon.svg',
                  color: const Color(0xffED4D2D),
                ),
                label: 'Shopee Live'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/notifikasiicon.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/svgs/notifikasiicon.svg',
                  color: const Color(0xffED4D2D),
                ),
                label: 'Notifikasi'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/profilicon.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/svgs/profilicon.svg',
                  color: const Color(0xffED4D2D),
                ),
                label: 'Saya'),
          ]),
    );
  }
}
