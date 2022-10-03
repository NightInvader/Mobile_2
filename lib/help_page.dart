import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            Text("Login, menu 1 ada list anggota kami, menu 2 ada stopwatch, menu 3 ada list hobby kami, menu 4 ada logout, dibawah ada navbar bisa ke menu sama ke menu bantuan ya ini itu bantuannya, silahkan menikmati dada dan sampai jumpa ")
          ],
        ),
      ),
    );
  }
}
