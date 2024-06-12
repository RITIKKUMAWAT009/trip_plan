

class TripModel {
   String placeName;
   String description;
   String imageUrl;
   String placeId;
   double ratingScore;

  TripModel(
      {required this.placeName,
      required this.description,
      required this.placeId,
      required this.ratingScore,
      required this.imageUrl});

  Map<String, dynamic> toJson() {
    return {
      'placeName': placeName,
      'placeId': placeId,
      'description': description,
      'imageUrl': imageUrl,
      'ratingScore': ratingScore
    };
  }

 factory TripModel.formJson(Map<String, dynamic> json) {
    print(json);
    return TripModel(
        placeName: json['placeName'],
        description: json['description'],
        placeId: json['placeId'],
        ratingScore: json['ratingScore'],
        imageUrl: json['imageUrl']);
  }
}
