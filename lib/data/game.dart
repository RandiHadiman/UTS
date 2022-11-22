class resep {
  String name, tutorial, image;

  resep({required this.name, required this.tutorial, required this.image});
}

List<resep> dataResep = [
  resep(
      name: 'Mobile Legends',
      tutorial:
          'Mobile Legends merupakan salah satu game moba yang sangat populer terutama di Asia. Ada beberapa Team Esports yang sering mewakili Indonesia dikancah Internasional seperti RRQ Hoshi dan Evos Legends yang pernah menjuarai M1.',
      image: 'assets/img/ml.jpg'),
  resep(
      name: 'PUBG',
      tutorial:
          'Player Underground Battlegrounds atau yang biasa disingkat PUBG merupakan game survival. Indonesia mempunyai Team Esports yang sudah beberapa kali mengharumkan nama negara yaitu BTR Esport yang pernah menjuarai turnamen PUBG tingkat dunia.',
      image: 'assets/img/pubg.jpg'),
  resep(
      name: 'Dota 2',
      tutorial:
          'Sampai saat ini Dota 2 masih menjadi turnamen esport dengan hadiah tertinggi yakni 40 juta dolar. Untuk divisi Dota 2 Indonesia belum bisa bersaing dengan Team Esport yang lain karena jarangnya Pro Player yang memainkan game ini.',
      image: 'assets/img/dota.jpg'),
  resep(
      name: 'Call Of Duty',
      tutorial:
          'Hampir sama seperti PUBG namun terdapat pebedaan dari segi tanpilan dan gameplay. Game ini sendiri kurang populer karena banyak playernya sudah pindah haluan ke game yang serupa yakni PUBG.',
      image: 'assets/img/cod.jpg'),
  resep(
      name: 'Valorant',
      tutorial:
          'Game ini sangat populer di Eropa dan sering mengadakan turnamen untuk menampung bakat para pro player yang sering memainkan game ini. Di Asia game ini sangat jarang dimainkan karena kurang populer.',
      image: 'assets/img/valoran.jpg'),
];
