// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hr_appb/utils/colors.dart';
import 'package:hr_appb/view/add_timesheet.dart';
import 'package:hr_appb/view/home.dart';
import 'package:hr_appb/view/timesheet.dart';

class ListTimesheet extends StatefulWidget {
  const ListTimesheet({Key? key}) : super(key: key);

  @override
  State<ListTimesheet> createState() => _ListTimesheetState();
}

class _ListTimesheetState extends State<ListTimesheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Timesheet',
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new Home(),
            ),
          ),
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white, // add custom icons also
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
          children: [
        'Markisa App',
        'HR App',
        'Aplikasi Kasir',
        'Web Perpustakaan',
        'Game Rpg'
      ].map((country) {
        // returning the CardWidget passing only title
        return CardWidget(title: country);
      }).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new AddTimesheet()));
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
