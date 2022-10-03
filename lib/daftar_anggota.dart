import 'package:flutter/material.dart';
import 'package:tugas_2/anggota.dart';

class Anggota extends StatelessWidget {
  const Anggota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Anggota"),
      ),
      body:ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index){
            final DaftarAnggota agt = daftarAnggotaList[index];
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                      children: [
                        Image.network(agt.selfImage, width: 150,),
                        Text(agt.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),
                        Text(agt.nim,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )

                )
              );

          },
        itemCount: daftarAnggotaList.length,
      ),
    );
  }
}
