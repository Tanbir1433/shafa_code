
class MusicTrack {
  final String backgroundImage;
  final String songName;
  final String duration;
  final String artistName;
  final List<String> tags;
  final String views;

  MusicTrack({
    required this.backgroundImage,
    required this.songName,
    required this.duration,
    required this.artistName,
    required this.tags,
    required this.views,
  });
}