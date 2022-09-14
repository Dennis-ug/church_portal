import 'dart:ffi';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../reponsive/res.dart';
import '../dialouge/dialouge.dart';
import 'contro.dart';

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
                      return AlertDialog(
                        content: AddAdvert(
                          size: size,
                          contentStyle: contentStyle,
                        ),
                      );
                      // Padding(
                      //   padding: const EdgeInsets.all(100),
                      //   child: AddDialouge(
                      //     child:
                      //
                      //   ),
                      // );
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

class AddAdvert extends StatelessWidget {
  AddAdvert({
    Key? key,
    required this.size,
    required this.contentStyle,
  }) : super(key: key);

  final Responsive size;
  final TextStyle contentStyle;
  final _contro = Get.put(AddvertControll());

  @override
  Widget build(BuildContext context) {
    // File img =
    return Container(
      width: size.cal_wdth(1089),
      child: Column(
        children: [
          Text(
            'Add Advert',
            style: contentStyle,
          ),
          SizedBox(
            height: size.cal_hyt(40),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.cal_wdth(328),
                height: size.cal_hyt(653),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Title"),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: const Text("Owner"),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: const Text("Contact"),
                        ),
                      ),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     label: Text("Duration"),
                      //   ),
                      // ),
                      // DropdownButtonFormField(items:  <DropdownMenuItem<int>>[DropdownMenuItem<>(child: Te)], onChanged: (value){})
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      _contro.loading.value == true;
                      FilePickerResult? result = await FilePicker.platform
                          .pickFiles(allowedExtensions: ['jpg', 'png']).then(
                              (value) {
                        _contro.loading.value == false;
                      });

                      if (result != null) {
                        _contro.img.value = result.files.single.path ?? '';
                        // File file = File(result.files.single.path);
                      } else {
                        // User canceled the picker
                      }
                    },
                    child: Obx(
                      () => _contro.img.value == '' &&
                              _contro.loading.value == false
                          ? DottedBorder(
                              color: const Color(0xff071832),
                              dashPattern: const [3, 3],
                              strokeWidth: 1,
                              child: SizedBox(
                                height: size.cal_hyt(251),
                                width: size.cal_wdth(355),
                                child: Icon(
                                  Icons.add_a_photo,
                                  size: size.cal_hyt(80),
                                  color: const Color(0xff071832),
                                ),
                              ),
                            )
                          : _contro.img.value == '' &&
                                  _contro.loading.value == true
                              ? const CircularProgressIndicator.adaptive()
                              : Image.file(
                                  File(
                                    _contro.img.value,
                                  ),
                                  height: size.cal_hyt(180),
                                ),
                    ),
                  ),
                  Text(
                    'Only selects jpg or png files',
                    style: GoogleFonts.poppins(
                      fontStyle: FontStyle.italic,
                      color: const Color(0xff071832).withOpacity(0.35),
                    ),
                    // textDirection: TextD,
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  _contro.img.value == '';
                  Get.back();
                },
                child: Container(
                  height: size.cal_hyt(56),
                  width: size.cal_wdth(189),
                  decoration: BoxDecoration(
                    color: const Color(0xffE8E8E8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.cal_wdth(40),
              ),
              Container(
                height: size.cal_hyt(56),
                width: size.cal_wdth(189),
                decoration: BoxDecoration(
                  color: const Color(0xff2B9B3C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Add advert',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: size.cal_hyt(20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
