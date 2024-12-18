class GalleryModel {
  int id;
  String url;

  GalleryModel({
<<<<<<< HEAD
    required this.id,
    required this.url,
  });

  GalleryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'];
=======
    this.id,
    this.url,
  });

  GalleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
<<<<<<< HEAD

class UninitializedGalleryModel extends GalleryModel {
  UninitializedGalleryModel()
      : super(
          id: 0,
          url: '',
        );
}
=======
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6
