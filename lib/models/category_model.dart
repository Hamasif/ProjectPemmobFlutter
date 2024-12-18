class CategoryModel {
  int id;
  String name;

  CategoryModel({
<<<<<<< HEAD
    required this.id,
    required this.name,
  });

  CategoryModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
=======
    this.id,
    this.name,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
