class Post {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Post({this.postId, this.id, this.name, this.email, this.body});

  Post.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }
}

//
// class Post {
//   final int ?userId;
//   final int ?id;
//   final String ?title;
//   final String ?body;
//
//   Post({this.userId, this.id, this.title, this.body});
//
//   factory Post.fromJson(Map<String, dynamic> json) => Post(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body']);
// }