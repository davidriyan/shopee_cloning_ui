import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 229,
                    width: double.infinity,
                    child: SvgPicture.asset('assets/svgs/ornamen.svg')),
                //membuat texfield search
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 12),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 36,
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  hintText: 'Setiap Hari Extra Cashback 50 %',
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: const Color(0xffED4D2D),
                                    fontWeight: FontWeight.w300,
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                        'assets/svgs/searchicon.svg'),
                                  ),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                        'assets/svgs/cameraicon.svg'),
                                  )),
                            ),
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset('assets/svgs/charthome.svg'),
                          const SizedBox(width: 15),
                          SvgPicture.asset('assets/svgs/komentaricon.svg')
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/svgs/spaylater.svg'),
                                const SizedBox(width: 10),
                                Text(
                                  'SPayLater',
                                  style: GoogleFonts.roboto(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffffffff)),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'BELI SEKARANG, BAYAR NANTI',
                              style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xffffffff)),
                            ),
                            Row(
                              children: [
                                Text(
                                  'SPayLater oleh PT Commerce Finance telah diawasi oleh Otoritas Jasa Keuangan',
                                  style: GoogleFonts.roboto(
                                      fontSize: 3,
                                      color: const Color(0xffFFFFFF)),
                                ),
                                Container(
                                  height: 3,
                                  width: 27,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      color: const Color(0xffffffff)),
                                  child: const Text('CEK DI SINI'),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text('GRATIS ONGKIR',
                                style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFFFFFF))),
                            Text('RP0',
                                style: GoogleFonts.roboto(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFEFC03))),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Material(
                        elevation: 10,
                        child: Container(
                          height: 62,
                          width: 404,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color(0xffFFFFFF)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset('assets/svgs/scan.svg'),
                              Container(
                                height: 28,
                                width: 1,
                                color: const Color(0xff747474),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svgs/iconsaldoshopee.svg'),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Rp.5.500.000',
                                        style: GoogleFonts.roboto(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Bayar Lebih Cepat',
                                    style: GoogleFonts.roboto(fontSize: 9),
                                  )
                                ],
                              ),
                              Container(
                                height: 28,
                                width: 1,
                                color: const Color(0xff747474),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svgs/iconcoin.svg'),
                                      const SizedBox(width: 10),
                                      Text(
                                        '10.000 Koin',
                                        style: GoogleFonts.roboto(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Klaim koin di sini',
                                    style: GoogleFonts.roboto(fontSize: 9),
                                  )
                                ],
                              ),
                              const SizedBox(width: 20)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset('assets/svgs/spaylaterred.svg'),
                        SvgPicture.asset('assets/svgs/pulsatagihanhiburan.svg'),
                        SvgPicture.asset('assets/svgs/shopeeexpress.svg'),
                        SvgPicture.asset('assets/svgs/shopeemall.svg'),
                        SvgPicture.asset(
                            'assets/svgs/shopeepaydisekitarmu.svg'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                            'assets/svgs/gratisongkirdanvoucher.svg'),
                        SvgPicture.asset('assets/svgs/hadiahshopee.svg'),
                        SvgPicture.asset('assets/svgs/cod.svg'),
                        SvgPicture.asset('assets/svgs/shopeefood.svg'),
                        SvgPicture.asset('assets/svgs/shopeelive.svg'),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/gratisuangbelanja.png'),
                                    fit: BoxFit.fitWidth)),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            height: 105,
                            // width: 167,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/cashback100%.png'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/avoskin.png'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              color: const Color(0xffFFEAD9),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/zonapenggunabaru.png'),
                            const SizedBox(height: 10),
                            Text(
                              'VOUCHER SPESIAL',
                              style: GoogleFonts.roboto(
                                  color: const Color(0xffED4D2D),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const SizedBox(height: 18),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 401,
                                    height: 110,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: 351,
                                    height: 85,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff939395))),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 94,
                                          height: 85,
                                          color: const Color(0xff4DA9A4),
                                          child: Center(
                                            child: Text(
                                              'GRATIS ONGKIR',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                  color:
                                                      const Color(0xffFFFFFF),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 8),
                                            Text(
                                              'Min. Belanja Rp0',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(height: 6),
                                            Container(
                                              height: 15,
                                              width: 90,
                                              color: const Color(0xffFFEAD9),
                                              child: Text(
                                                'Pengguna Baru',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: const Color(
                                                        0xffFF6A6A)),
                                              ),
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              'Berlaku 60 Hari',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 15,
                                                  color:
                                                      const Color(0xff7C7C7C)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(width: 18),
                                        Container(
                                          height: 27,
                                          width: 68,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffED4D2D),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.transparent,
                                            child: InkWell(
                                              onTap: () {},
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              child: Center(
                                                child: Text(
                                                  'Lihat',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                      color: const Color(
                                                          0xffFFFFFF),
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
