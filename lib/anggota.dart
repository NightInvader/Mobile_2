class DaftarAnggota {
  String nama;
  String nim;
  String hobby;
  String selfImage;
  List<String> hobbyImageUrl;

  DaftarAnggota({
    required this.nama,
    required this.nim,
    required this.hobby,
    required this.selfImage,
    required this.hobbyImageUrl,
  });
}

var daftarAnggotaList = [
  DaftarAnggota(
      nama: "Mu'ammar Sadam Sirojuddin Al-Arief",
      nim: '124200005',
      hobby: 'Ngegame,Nonton Vtuber, Ngewibu',
      selfImage: 'https://pbs.twimg.com/profile_images/1450152997715996672/j41FdEc1_400x400.jpg',
      hobbyImageUrl: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Findihome.co.id%2Fblog%2Frekomendasi-pc-gaming-dengan-spesifikasi-andal-dan-game-pc-terbaik&psig=AOvVaw1BQxA2iawjr7YkhgJHWuq6&ust=1664877724739000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNivzfzmw_oCFQAAAAAdAAAAABAD',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hololive.tv%2Findonesia&psig=AOvVaw2fPs-96wZOCu2hHm-bzeTz&ust=1664877755866000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCND055Hnw_oCFQAAAAAdAAAAABAS',
        'https://twitter.com/Zebrabakar/status/1576876789715959810/photo/1',
      ]
  ),
  DaftarAnggota(
      nama: 'Faruk Muhammad Azmi',
      nim: '124200008',
      hobby: 'Futsal, Sepakbola, NgePES',
      selfImage: 'https://i.postimg.cc/Mpdw7vD5/IMG20200111112927.jpg',
      hobbyImageUrl: [
        '',
        '',
        ''
      ]
  ),
  DaftarAnggota(
      nama: 'Aditya Dharma Mulyatama',
      nim: '124200045',
      hobby: 'main game',
      selfImage: 'https://media.discordapp.net/attachments/595199260392292354/1026434742549217300/IMG_20221003_170331.jpg',
      hobbyImageUrl: [
        '',
      ]
  )
];