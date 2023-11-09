
class Update {

  String id = "";
  String title = "";
  String image = "";
  String status = "";
  String featured = "";
  String description = "";
  String excerpt = "";
  String link = "";
  String createdAt = "";
  String updatedAt = "";

  Update();

  Update.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    status = json['status'];
    featured = json['featured'];
    description = json['description'];
    excerpt = json['excerpt'];
    link = json['link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'image': image,
    'status': status,
    'featured': featured,
    'description': description,
    'excerpt': excerpt,
    'link': link,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

}
