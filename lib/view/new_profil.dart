// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:hr_appb/utils/colors.dart';
import 'package:hr_appb/view/home.dart';
import 'package:hr_appb/view/list_profil.dart';

class NewProfil extends StatefulWidget {
  const NewProfil({Key? key}) : super(key: key);

  @override
  State<NewProfil> createState() => _NewProfilState();
}

class _NewProfilState extends State<NewProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('Profil'),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => new ListProfil(),
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
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Image.asset('assets/profil.png')),
          Container(
            alignment: Alignment.bottomCenter,
            height: 772,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 31, 8, 27),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/lgprofil.png'),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8, left: 17),
                        child: Text('Data Pribadi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Nama',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Muhammad Fatih Darmawan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Tempat, Tanggal Lahir',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Yogyakarta, 9 November 2201',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('NIK',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text('3412356789014562',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 119),
                            child: IconButton(
                              icon: Image.asset('assets/lgsalin.png'),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('NPWP',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text('2345698131',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 179),
                            child: IconButton(
                              icon: Image.asset('assets/lgsalin.png'),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 11, 8, 27),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/lgkerja.png'),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 8, left: 17),
                        child: Text('Data Karyawan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('ID Perusahaan',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('FL-345123',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Jabatan',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Mobile Developer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(34, 2, 8, 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Masa Kerja',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('30 Juli 2022 - 30 Desember 2025',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 13),
                  child: SizedBox(
                    width: 342,
                    height: 46,
                    child: ElevatedButton(
                      child: const Text('Kembali'),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
