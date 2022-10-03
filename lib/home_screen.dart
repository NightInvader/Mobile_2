


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_2/daftar_anggota.dart';
import 'package:tugas_2/daftar_hobby.dart';
import 'package:tugas_2/help_page.dart';



class HomeScreen extends StatefulWidget {
  final String Username;
  final String Password;
  const HomeScreen({Key? key,
    required this.Username,
    this.Password= ""
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}


//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class HomeScreen extends StatefulWidget {
//   final String Username;
//   final String Password;
//   const HomeScreen({Key? key,
//     required this.Username,
//     this.Password= ""
//   }) : super(key: key);
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
class _HomeScreenState extends State<HomeScreen> {
  // late List<Widget> _pages;
  // late Widget _menu;
  // late Widget _help;
  // late Widget _page3;
  // late int _currentIndex;
  // late Widget _currentPage;

  // late Widget _home;
  // late Widget _help;
  // late List<Widget> _pages;

  @override
  // void initState() {
  //   super.initState();
  //   _page1 = const HomeScreen();
  //   _page2 = const Help();
  //   _page3 = Page3(changePage: _changeTab);
  //   _pages = [_page1, _page2, _page3];
  //   _currentIndex = 0;
  //   _currentPage = _page1;
  // }
  // void initState(){
  //   super.initState();
  //   // _home = const HomeScreen();
  //   _pages = [_home,const Help()];

  // }
  //
  // void _changeTab(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //     _currentPage = _pages[index];
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          _anggota(context),
          _stopwatch(context),
          _daftarHobby(context),
          _logout(context),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: (index){
        //   _changeTab(index);
        // },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Menu',
              backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'Help',
              backgroundColor: Colors.blue,
          )
        ],
        // onTap: (index){
        //   _transfer(context, index);
        // }
      ),
    );
  }
  Widget _anggota(BuildContext context){
    return Container(
      width: 500,
      height: 120,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Daftar Anggota"),
        onPressed: (){Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => const Anggota()
              ));
        },
      ),
    );
  }

  Widget _stopwatch(BuildContext context){
    return Container(
      width: 500,
      height: 120,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("StopWatch"),
        onPressed: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const Anggota()
          //   ));
        },
      ),
    );
  }

  Widget _daftarHobby(BuildContext context){
    return Container(
      width: 500,
      height: 120,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Daftar Hobby"),
        onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Hobby()
            ));
        },
      ),
    );
  }

  Widget _logout(BuildContext context){
    return Container(
      width: 500,
      height: 120,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ElevatedButton(
        child: Text("Logout"),
        onPressed: (){
          Navigator.pop(context);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const Anggota()
          //   ));
        },
      ),
    );
  }
  // Widget _transfer(BuildContext context, int index){
  //   _pages[index];
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context)  => _pages[index]
  //   ));
  //   return Container();
  // }
}
