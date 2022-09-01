import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../reponsive/res.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context: context);
    return Column(
      children: [
        SizedBox(
          height: size.cal_hyt(40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cardCust(
              color: const Color(
                0xff2B9B3C,
              ),
              size: size,
              subtitle: '3,456',
              title: 'Total members',
            ),
            cardCust(
              color: const Color(
                0xffE117D9,
              ),
              size: size,
              subtitle: 'Uhs 398,456 ',
              title: 'Transaction amount',
            ),
            cardCust(
              color: const Color(
                0xff5F14FF,
              ),
              size: size,
              subtitle: '230 Adverts',
              title: 'Adverts',
            ),
          ],
        ),
        SizedBox(
          height: size.cal_hyt(60),
        ),
        Container(
          height: size.cal_hyt(548),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 19,
                color: Colors.black26,
              )
            ],
          ),
        )
      ],
    );
  }

  Container cardCust({
    required Responsive size,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Container(
      height: size.cal_hyt(207),
      width: size.cal_wdth(344),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 19,
            color: Colors.black26,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: size.cal_wdth(24)),
            ),
            SizedBox(
              height: size.cal_hyt(20),
            ),
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: size.cal_wdth(24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
