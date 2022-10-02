import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../reponsive/res.dart';
import '../dialog/dialog_contro.dart';

class AddAdvert extends StatelessWidget {
  AddAdvert({
    Key? key,
    required this.size,
    required this.contentStyle,
  }) : super(key: key);

  final Responsive size;
  final TextStyle contentStyle;
  final _contro = Get.put(Dialouge());

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
                  Obx(
                    () => _contro.img.value.isEmpty
                        ? GestureDetector(
                            onTap: _contro.changePic,
                            child: Column(
                              children: [
                                DottedBorder(
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
                                ),
                                Text(
                                  _contro.warningText.value,
                                  style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic,
                                    color: _contro.warningText.value !=
                                            'format not supported'
                                        ? const Color(0xff071832)
                                            .withOpacity(0.35)
                                        : Colors.red,
                                  ),
                                  // textDirection: TextD,
                                )
                              ],
                            ),
                          )
                        : Column(
                            children: [
                              Image.file(
                                File(
                                  _contro.img.value,
                                ),
                                height: size.cal_hyt(180),
                              ),
                              SizedBox(
                                height: size.cal_hyt(15),
                              ),
                              GestureDetector(
                                onTap: () async {},
                                child: Container(
                                  height: size.cal_hyt(56),
                                  width: size.cal_wdth(192),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE8E8E8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Change pic',
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
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
                  _contro.warningText.value == 'Only select jpg or png files';
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