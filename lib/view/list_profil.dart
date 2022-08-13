import 'package:flutter/material.dart';
import 'package:hr_appb/view/new_profil.dart';
import 'package:hr_appb/view/slip_gaji.dart';

import 'home.dart';

class ListProfil extends StatelessWidget {
  const ListProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new NewProfil()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
                side: BorderSide(
                  color: Colors.grey.shade200,
                ),
              ),
              margin: EdgeInsets.only(left: 17, right: 17, bottom: 8, top: 17),
              child: ListTile(
                leading: Image.asset('assets/lgprofil.png'),
                title: Text('Profil'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new SlipGaji()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
                side: BorderSide(
                  color: Colors.grey.shade200,
                ),
              ),
              margin: EdgeInsets.only(left: 17, right: 17, bottom: 8, top: 9),
              child: ListTile(
                leading: Image.asset('assets/lggaji.png'),
                title: Text('Slip Gaji'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
