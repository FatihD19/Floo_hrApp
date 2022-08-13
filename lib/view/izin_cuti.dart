// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hr_appb/view/home.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';

class IzinCuti extends StatefulWidget {
  const IzinCuti({Key? key}) : super(key: key);

  @override
  State<IzinCuti> createState() => _IzinCutiState();
}

class _IzinCutiState extends State<IzinCuti> {
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  // Initial Selected Value
  String dropdownvalue = 'Sakit';
  bool isLainya = false;
  DateTime? _dateTime;
  DateTime? _dateEnd;
  String truncateString(String data, int length) {
    return (data.length >= length) ? '${data.substring(0, length)}' : data;
  }

  void date() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2099),
    ).then((date) {
      if (date != null)
        setState(() {
          _dateTime = date;
        });
    });
  }

  void dateEnd() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2099),
    ).then((dateE) {
      if (dateE != null)
        setState(() {
          _dateEnd = dateE;
        });
    });
  }

  // List of items in our dropdown menu
  var items = [
    'Sakit',
    'Menikah',
    'Melahirkan',
    'Cuti Karyawan',
    'Lainya',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Permohonan Izin/Cuti',
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => Home(),
            ),
          ),
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white, // add custom icons also
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text('Jenis Permohonan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.grey.withOpacity(0.53))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: DropdownButton(
                      isExpanded: true,
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                          // if (newValue == 'Lainya') {
                          //   isLainya = true;
                          // }
                        });
                      },
                    ),
                  ),
                ),
                dropdownvalue == 'Lainya'
                    ? Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 17, bottom: 8),
                            alignment: Alignment.centerLeft,
                            child: Text('Nama Permohonan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12)),
                          ),
                          Container(
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 2,
                              decoration: InputDecoration(
                                hintText: "Enter Remarks",
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                filled: true,
                              ),
                            ),
                            decoration: BoxDecoration(
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white70,
                                  blurRadius: 25,
                                  offset: const Offset(0, 100),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 27, bottom: 8),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(bottom: 8, right: 120),
                              child: Text('Sejak')),
                          Card(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(14, 12, 8, 11),
                                  child: IconButton(
                                      onPressed: () {
                                        date();
                                      },
                                      icon: Image.asset(
                                        'assets/lgdate.png',
                                        width: 27,
                                        height: 27,
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 17, bottom: 17, right: 20),
                                  child: Text(
                                    _dateTime == null
                                        ? 'year-mm-dd'
                                        : truncateString(
                                            _dateTime.toString(), 10),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 27, bottom: 8),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(bottom: 8, right: 110),
                              alignment: Alignment.centerLeft,
                              child: Text('Berakhir')),
                          Card(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(14, 12, 8, 11),
                                  child: IconButton(
                                      onPressed: () {
                                        dateEnd();
                                      },
                                      icon: Image.asset(
                                        'assets/lgdate.png',
                                        width: 27,
                                        height: 27,
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 17, bottom: 17, right: 37),
                                  child: Text(
                                    _dateTime == null
                                        ? 'year-mm-dd'
                                        : truncateString(
                                            _dateEnd.toString(), 10),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text('Alasan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Enter Remarks",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        blurRadius: 25,
                        offset: const Offset(0, 100),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text('Bukti Permohonan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                GestureDetector(
                  onTap: _openImagePicker,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 220,
                    color: Colors.grey[300],
                    child: _image != null
                        ? Image.file(_image!, fit: BoxFit.cover)
                        : const Icon(Icons.upload_file, size: 40),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 24, bottom: 13),
                  child: SizedBox(
                    width: 342,
                    height: 46,
                    child: ElevatedButton(
                      child: const Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
