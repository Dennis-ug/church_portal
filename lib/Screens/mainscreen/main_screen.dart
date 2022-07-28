import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal/reponsive/res.dart';

import '../Members/members.dart';
import '../adverts/adverts.dart';
import '../donations/donation.dart';
import '../home/home.dart';
import '../legars/legars.dart';
import '../prayer/prayers.dart';
import '../quotes/qoutes.dart';
import '../utilites/utilities.dart';
import 'main_screen_contro.dart';
import 'taggle.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final _contro = Get.put(MainScreenContro());
  final List<Widget> _screens = [
    Home(),
    Members(),
    Adverts(),
    Quotes(),
    Donation(),
    Legars(),
    Prayers(),
    Utilities()
  ];
  @override
  Widget build(BuildContext context) {
    Responsive _size = Responsive(context: context);
    return Scaffold(
      body: Row(
        children: [
          SidePane(size: _size, contro: _contro),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: _size.cal_wdth(20), vertical: _size.cal_hyt(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "holy healing ministries international".toUpperCase(),
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: _size.cal_hyt(24),
                    ),
                  ),
                  Obx(
                    () => _screens[_contro.currentIndex.value],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SidePane extends StatelessWidget {
  const SidePane({
    Key? key,
    required Responsive size,
    required MainScreenContro contro,
  })  : _size = size,
        _contro = contro,
        super(key: key);

  final Responsive _size;
  final MainScreenContro _contro;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: _size.cal_hyt(20),
        // horizontal: _size.cal_wdth(20),
      ),
      width: _size.cal_wdth(231),
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0xff071832),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _size.cal_wdth(20)),
            child: SizedBox(
              child: Row(
                children: [
                  Container(
                    height: _size.cal_hyt(56),
                    width: _size.cal_hyt(56),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: const Color(0xff99AFCF),
                      size: _size.cal_hyt(48),
                    ),
                  ),
                  SizedBox(
                    width: _size.cal_wdth(10),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Admin',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: _size.cal_wdth(16),
                          ),
                        ),
                        SizedBox(
                          height: _size.cal_hyt(10),
                        ),
                        Text(
                          'Kasamba Megan',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: _size.cal_wdth(16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: _size.cal_hyt(20),
          ),
          const Divider(
            color: Color(0xffE8E8E8),
          ),
          SizedBox(
            height: _size.cal_hyt(30),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: _size.cal_wdth(20)),
              child: Column(
                children: List.generate(
                  taggle.length,
                  (index) => Obx(
                    () => GestureDetector(
                      onTap: (() => _contro.currentIndex.value = index),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AnimatedContainer(
                          padding: EdgeInsets.symmetric(
                            vertical: _size.cal_hyt(10),
                          ).copyWith(left: _size.cal_wdth(10)),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                            color: _contro.currentIndex.value == index
                                ? Colors.white
                                : const Color(0xff071832),
                          ),
                          duration: const Duration(milliseconds: 100),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                taggle[index].svg,
                                color: _contro.currentIndex.value == index
                                    ? const Color(0xff071832)
                                    : Colors.white,
                                width: 25,
                              ),
                              SizedBox(
                                width: _size.cal_wdth(20),
                              ),
                              Text(
                                taggle[index].title,
                                style: GoogleFonts.lato(
                                  fontSize: _size.cal_wdth(16),
                                  fontWeight: FontWeight.w400,
                                  color: _contro.currentIndex.value == index
                                      ? const Color(0xff071832)
                                      : Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: _size.cal_wdth(10)),
            height: _size.cal_hyt(76),
            width: _size.cal_wdth(189),
            decoration: BoxDecoration(
              color: const Color(0xff2B9B3C),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.power_settings_new,
                  color: Colors.white,
                  size: _size.cal_wdth(30),
                ),
                SizedBox(
                  width: _size.cal_wdth(20),
                ),
                Text(
                  "Log Out",
                  style: GoogleFonts.lato(
                    fontSize: _size.cal_wdth(16),
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
