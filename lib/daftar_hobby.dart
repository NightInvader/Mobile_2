import 'package:flutter/material.dart';
import 'package:tugas_2/anggota.dart';

class Hobby extends StatelessWidget {
  const Hobby({Key? key}) : super(key: key);

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
                        Container(
                          height: (MediaQuery.of(context).size.height)/4,
                          child: ListView.builder(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              scrollDirection: Axis.horizontal,
                              itemCount: daftarAnggotaList.length,
                              itemBuilder: (context, index){
                                return Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(agt.hobbyImageUrl[index],
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                          ),
                        ),
                        Text(agt.nama,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(agt.hobby,
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
