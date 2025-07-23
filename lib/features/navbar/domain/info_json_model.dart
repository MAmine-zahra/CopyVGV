class BackendArchitectureModel {
  String? mainTitle;
  List<Content>? content;

  BackendArchitectureModel({this.mainTitle, this.content});

  factory BackendArchitectureModel.fromJson(Map<String, dynamic> json) {
    return BackendArchitectureModel(
      mainTitle: json['mainTitle'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((item) => Content.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mainTitle': mainTitle,
      'content': content?.map((item) => item.toJson()).toList(),
    };
  }
}

class Content {
  String? type;
  String? text;
  List<String>? points;
  String? code;
  String? note;
  List<String>? notePoints;
  String? image;

  Content({this.type, this.text, this.points, this.code, this.note, this.notePoints, this.image});

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      type: json['type'] as String?,
      text: json['text'] as String?,
      points: (json['points'] is List)
          ? List<String>.from(json['points'] as List)
          : null,
      code: json['code'] as String?,
      note: json['note'] as String?,
      notePoints: (json['notePoints'] is List)
          ? List<String>.from(json['notePoints'] as List)
          : null,
      image: json['image'] as String?,
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'text': text,
      'points': points,
      'code': code,
      'note': note,
      'notePoints': notePoints,
      'image':image,
    };
  }
}
