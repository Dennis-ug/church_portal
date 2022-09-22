import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../reponsive/res.dart';

// class Quotes extends StatelessWidget {
//   const Quotes({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text('Quotes');
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../reponsive/res.dart';

class Quotes extends StatelessWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context: context);
    TextStyle tableHeading = GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: size.cal_wdth(
        15,
      ),
    );
    TextStyle tableContent = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      color: const Color(0xff071832),
      fontSize: size.cal_wdth(
        15,
      ),
    );
    return Column(
      children: [
        SizedBox(
          height: size.cal_hyt(40),
        ),
        Text(
          'Quotes',
          style: GoogleFonts.poppins(
            fontSize: size.cal_wdth(24),
            color: const Color(0xff071832),
          ),
        ),
        SizedBox(
          height: size.cal_hyt(20),
        ),
        Table(
          border: TableBorder.symmetric(
            outside: const BorderSide(
              color: Color(0xff071832),
            ),
          ),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
            3: FlexColumnWidth(),
            4: FlexColumnWidth(),
            5: FlexColumnWidth(),
            6: FlexColumnWidth(),
            7: FlexColumnWidth(),
            8: FlexColumnWidth(),
            9: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
                decoration: const BoxDecoration(
                  color: Color(0xff2B9B3C),
                ),
                children: [
                  Text(
                    " No.",
                    style: tableHeading,
                  ),
                  Text(
                    "Id",
                    style: tableHeading,
                  ),
                  Text(
                    "First name",
                    style: tableHeading,
                  ),
                  Text(
                    "second name ",
                    style: tableHeading,
                  ),
                  Text(
                    "Contact",
                    style: tableHeading,
                  ),
                  Text(
                    "Branch ",
                    style: tableHeading,
                  ),
                  Text(
                    "Date of join",
                    style: tableHeading,
                  ),
                  Text(
                    "Status ",
                    style: tableHeading,
                  ),
                  Text(
                    "Role",
                    style: tableHeading,
                  ),
                ]),
            TableRow(
                // decoration: BoxDecoration(
                //     // color: Color(0xff2B9B3C),
                //     ),
                children: [
                  Text(
                    " 1.",
                    style: tableContent,
                  ),
                  Text(
                    "HHMI1232",
                    style: tableContent,
                  ),
                  Text(
                    "Kaya",
                    style: tableContent,
                  ),
                  Text(
                    "Moses",
                    style: tableContent,
                  ),
                  Text(
                    "0770963649",
                    style: tableContent,
                  ),
                  Text(
                    "Mpumude",
                    style: tableContent,
                  ),
                  Text(
                    "02/04/2020",
                    style: tableContent,
                  ),
                  Text(
                    "Active",
                    style: tableContent,
                  ),
                  Text(
                    "Ordinary",
                    style: tableContent,
                  ),
                ]),
            TableRow(
                // decoration: BoxDecoration(
                //     // color: Color(0xff2B9B3C),
                //     ),
                children: [
                  Text(
                    " 2.",
                    style: tableContent,
                  ),
                  Text(
                    "HHMI1233",
                    style: tableContent,
                  ),
                  Text(
                    "Kumi",
                    style: tableContent,
                  ),
                  Text(
                    "Jim",
                    style: tableContent,
                  ),
                  Text(
                    "0700963649",
                    style: tableContent,
                  ),
                  Text(
                    "Mpumude",
                    style: tableContent,
                  ),
                  Text(
                    "05/04/2020",
                    style: tableContent,
                  ),
                  Text(
                    "Active",
                    style: tableContent,
                  ),
                  Text(
                    "Adimn",
                    style: tableContent,
                  ),
                ]),
            TableRow(
                decoration: BoxDecoration(
                    // color: Color(0xff2B9B3C),
                    ),
                children: [
                  Text(
                    " 3.",
                    style: tableContent,
                  ),
                  Text(
                    "HHMI1242",
                    style: tableContent,
                  ),
                  Text(
                    "Kawalya",
                    style: tableContent,
                  ),
                  Text(
                    "Clever",
                    style: tableContent,
                  ),
                  Text(
                    "0720963649",
                    style: tableContent,
                  ),
                  Text(
                    "Mpumude",
                    style: tableContent,
                  ),
                  Text(
                    "02/04/2020",
                    style: tableContent,
                  ),
                  Text(
                    "Active",
                    style: tableContent,
                  ),
                  Text(
                    "Ordinary",
                    style: tableContent,
                  ),
                ]),
            TableRow(
                // decoration: BoxDecoration(
                //     // color: Color(0xff2B9B3C),
                //     ),
                children: [
                  Text(
                    " 4.",
                    style: tableContent,
                  ),
                  Text(
                    "HHMI1234",
                    style: tableContent,
                  ),
                  Text(
                    "Kifuko",
                    style: tableContent,
                  ),
                  Text(
                    "John",
                    style: tableContent,
                  ),
                  Text(
                    "0701963649",
                    style: tableContent,
                  ),
                  Text(
                    "Mpumude",
                    style: tableContent,
                  ),
                  Text(
                    "02/04/2020",
                    style: tableContent,
                  ),
                  Text(
                    "Active",
                    style: tableContent,
                  ),
                  Text(
                    "Ordinary",
                    style: tableContent,
                  ),
                ]),
            TableRow(
                decoration: const BoxDecoration(
                    // color: Color(0xff2B9B3C),
                    ),
                children: [
                  Text(
                    " 5.",
                    style: tableContent,
                  ),
                  Text(
                    "HHMI1234",
                    style: tableContent,
                  ),
                  Text(
                    "Bwayo",
                    style: tableContent,
                  ),
                  Text(
                    "Grey",
                    style: tableContent,
                  ),
                  Text(
                    "0770963649",
                    style: tableContent,
                  ),
                  Text(
                    "Mpumude",
                    style: tableContent,
                  ),
                  Text(
                    "02/04/2020",
                    style: tableContent,
                  ),
                  Text(
                    "Active",
                    style: tableContent,
                  ),
                  Text(
                    "Ordinary",
                    style: tableContent,
                  ),
                ])
          ],
        ),
      ],
    );
  }
}
