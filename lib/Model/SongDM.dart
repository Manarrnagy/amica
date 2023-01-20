class SongDM {
  static int idCounter = 1;
  int songId = 0;
  String songName;
  String artistName;
  String songImgUrl;
  String category;
  bool isFav = false;

  SongDM(this.songName, this.artistName, this.songImgUrl, this.category,
      {this.isFav = false}) {
    songId = idCounter;
    idCounter++;
  }
}
