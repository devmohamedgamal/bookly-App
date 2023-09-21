import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinks({required this.smallThumbnail,required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json['smallThumbnail'] == null ? "https://www.shoroukbookstores.com/images/Books/original/9781847941831.jpg" : json['smallThumbnail'] as String,
        thumbnail: json['thumbnail'] == null ? "https://www.shoroukbookstores.com/images/Books/original/9781847941831.jpg" : json['thumbnail'] as String,
      );

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
      };

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
