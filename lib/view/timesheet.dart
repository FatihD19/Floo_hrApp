// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  // right now it only accepts title, but you can add more
  // arguments to be accepted by this widget
  CardWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  // responsible for toggle
  bool _showData = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          // list card containing country name

          // this is the company card which is toggling based upon the bool
          _showData
              ? Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() => _showData = !_showData);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(
                            color: Colors.grey.shade200,
                          ),
                        ),
                        margin: EdgeInsets.only(left: 17, right: 17),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 13, 8, 8),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/lgprojek.png',
                              width: 51,
                              height: 51,
                            ),
                            title: Column(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(widget.title,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold))),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Testing App | Senin, 01 Jan 2022',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            trailing: Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 8),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Project',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Markisa App',
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 8),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Tanggal',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Senin, 9 Oktober 2021',
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 8),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Jam Kerja',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('08.00 - 17.00 WIB',
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 16, 8),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Activity',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    'Activity Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis neque ut volutpat magna sed. Mi turpis diam amet risus donec. Pharetra volutpat auctor.',
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 8),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('To do',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    'To do Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis neque ut volutpat magna sed. Mi turpis diam amet risus donec. Pharetra volutpat auctor.',
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 8, 0, 8),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Lokasi',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Candi, Sidoharjo',
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : GestureDetector(
                  onTap: () {
                    setState(() => _showData = !_showData);
                  },
                  child: Card(
                    margin: EdgeInsets.only(left: 17, right: 17),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 13, 8, 8),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/lgprojek.png',
                          width: 51,
                          height: 51,
                        ),
                        title: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text(widget.title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Testing App | Senin, 01 Jan 2022',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                    ),
                  ),
                ), // else blank
        ]);
  }
}
