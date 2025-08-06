class Pin {
  final String imageUrl;
  final String title;
  final String likes;
  final String location;
  final String price;
  final String? sharedByProfileImageUrl; // for 'Shared with you' section
  final String? sharedByName; // for 'Shared with you' section

  Pin({
    required this.imageUrl,
    required this.title,
    required this.likes,
    required this.location,
    required this.price,
    this.sharedByProfileImageUrl,
    this.sharedByName,
  });
}
