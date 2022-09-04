import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../reponsive/res.dart';
import '../dialouge/dialouge.dart';

class Adverts extends StatelessWidget {
  const Adverts({Key? key}) : super(key: key);

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
    TextStyle contentStyle = GoogleFonts.poppins(
        color: const Color(0xff071832),
        fontWeight: FontWeight.w400,
        fontSize: size.cal_wdth(24));
    return Column(
      children: [
        SizedBox(
          height: size.cal_hyt(40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Running Adverts',
              style: GoogleFonts.poppins(
                fontSize: size.cal_wdth(24),
                color: const Color(0xff071832),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(100),
                        child: AddDialouge(
                          child: Column(
                            children: [
                              Text(
                                'Add Advert',
                                style: contentStyle,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: size.cal_wdth(200),
                                    child: Form(
                                      child: Column(
                                        children: [TextFormField()],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: size.cal_wdth(10)),
                height: size.cal_hyt(40),
                width: size.cal_wdth(160),
                decoration: BoxDecoration(
                  color: const Color(0xff2B9B3C),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: size.cal_wdth(30),
                    ),
                    SizedBox(
                      width: size.cal_wdth(10),
                    ),
                    Text(
                      "Add Advert",
                      style: GoogleFonts.lato(
                        fontSize: size.cal_wdth(16),
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
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
                    "Title",
                    style: tableHeading,
                  ),
                  Text(
                    "Owner",
                    style: tableHeading,
                  ),
                  Text(
                    "Contact",
                    style: tableHeading,
                  ),
                  Text(
                    "Date added ",
                    style: tableHeading,
                  ),
                  Text(
                    "Exp date",
                    style: tableHeading,
                  ),
                  Text(
                    "Status",
                    style: tableHeading,
                  ),
                  const SizedBox()
                ]),
            TableRow(
              // decoration: BoxDecoration(
              //   color: Color(0xff2B9B3C),
              // ),
              children: [
                Text(
                  " 1.",
                  style: tableContent,
                ),
                Text(
                  "Great links",
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
                  "02/04/2020",
                  style: tableContent,
                ),
                Text(
                  "02/04/2020",
                  style: tableContent,
                ),
                Text(
                  "Running",
                  style: tableContent,
                ),
                Icon(
                  Icons.delete_outlined,
                  size: size.cal_wdth(
                    25,
                  ),
                )
                // FaIcon(FontAwesomeIcons.trashArrowUp)
              ],
            ),
          ],
        ),
      ],
    );
    ;
  }
}
