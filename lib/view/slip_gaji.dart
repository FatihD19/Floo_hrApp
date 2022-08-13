// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hr_appb/utils/colors.dart';
import 'package:hr_appb/view/home.dart';
import 'package:hr_appb/view/list_profil.dart';

class SlipGaji extends StatefulWidget {
  const SlipGaji({Key? key}) : super(key: key);

  @override
  State<SlipGaji> createState() => _SlipGajiState();
}

class _SlipGajiState extends State<SlipGaji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          actions: [
            Icon(Icons.share),
          ],
          title: Text(
            'Slip Gaji',
            style: TextStyle(color: Colors.white),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => ListProfil(),
              ),
            ),
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white, // add custom icons also
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 672,
                width: 342,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 23, 8, 0),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset('assets/lgfloo.png',
                                width: 39, height: 30),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                top: 16.0, bottom: 8, left: 17),
                            child: Text('PT Floo Integra Digital',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 16, left: 20),
                      child: Text('Slip Gaji',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 16.0, left: 17),
                      child: Text('PT Floo Integra Digital',
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 17,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Nama',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Muhammad Fatih Darmawan')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Jabatan',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Mobile Developer')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Masa Kerja',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('30 Desember 2022 - 2 Juli 2023')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 12, left: 20),
                      child: Text('Penghasilan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 17,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Gaji Pokok',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 3.000.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tunjangan Jabatan',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 2.000.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tunjangan Transportasi',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 300.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Penerimaan Lainya',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 700.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Penghasilan',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                                Text('Rp. 6.000.000',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 12, left: 20),
                      child: Text('Pengurangan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 17,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Iuran Bpjs Kesehatan',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 70.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Iuran Bpjs Kesehatan ketenagakerjaan',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 40.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Pajak',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 60.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Potongan Lainya',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                                Text('Rp. 100.000')
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Pengurangan',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                                Text('Rp. 200.000',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 0.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 17, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Diterima',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('Rp. 5.000.000',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(79, 2, 79, 11),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: Row(
                          children: [
                            Icon(Icons.picture_as_pdf_sharp),
                            SizedBox(
                              width: 5,
                              height: 50,
                            ),
                            const Text(
                              'Download Slip Gaji',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
