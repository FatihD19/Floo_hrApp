// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:hr_appb/view/home.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';

class AddTimesheet extends StatefulWidget {
  const AddTimesheet({Key? key}) : super(key: key);

  @override
  State<AddTimesheet> createState() => _AddTimesheetState();
}

class _AddTimesheetState extends State<AddTimesheet> {
  // Initial Selected Value
  String dropdownvalue = 'Markisa APP';
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

  TimeOfDay _time = TimeOfDay.now();

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  TimeOfDay _timeEnd = TimeOfDay.now();

  void _selectTimeEnd() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _timeEnd,
    );
    if (newTime != null) {
      setState(() {
        _timeEnd = newTime;
      });
    }
  }

  // List of items in our dropdown menu
  var items = [
    'Markisa APP',
    'Hr App',
    'Cashier App',
    'Web Perpus',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Timesheet',
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.grey.withOpacity(0.53))
                      ]),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(17, 17, 11, 17),
                      labelText: 'Pilih Projek',
                    ),
                    isExpanded: true,
                    icon: Image.asset('assets/lgdropdown.png'),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text('Tanggal',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _dateTime == null
                              ? 'year-mm-dd'
                              : truncateString(_dateTime.toString(), 10),
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        IconButton(
                            onPressed: () {
                              date();
                            },
                            icon: Image.asset(
                              'assets/lgdate.png',
                              width: 27,
                              height: 27,
                            )),
                      ],
                    ),
                  ),
                ),
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
                                      onPressed: _selectTime,
                                      icon: Image.asset(
                                        'assets/lgclock.png',
                                        width: 27,
                                        height: 27,
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 17, bottom: 17, right: 39),
                                  child: Text(
                                    _time.format(context),
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
                                      onPressed: _selectTimeEnd,
                                      icon: Image.asset(
                                        'assets/lgclock.png',
                                        width: 27,
                                        height: 27,
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 17, bottom: 17, right: 37),
                                  child: Text(
                                    _timeEnd.format(context),
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
                  child: Text('Activity',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 8,
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
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text('To Do',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "To Do",
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
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text('Lokasi',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Tambahkan Lokasi",
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
