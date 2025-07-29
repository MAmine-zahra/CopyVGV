class DataJsonModel {
  String? mainTitle;
  List<Content>? content;

  DataJsonModel({this.mainTitle, this.content});

  factory DataJsonModel.fromJson(Map<String, dynamic> json) {
    return DataJsonModel(
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
  String? code2;
  String? goodCode;
  String? badCode;
  String? imperative;
  String? declarative;
  String? caution;
  String? tip;

  Content({this.type, this.text, this.points, this.code, this.note, this.notePoints, this.image, this.code2, this.goodCode, this.badCode, this.imperative, this.declarative, this.caution, this.tip,});

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
      code2: json['code2'] as String?,
      goodCode: json ['goodCode'] as String?,
      badCode: json ['badCode'] as String?,
      imperative: json ['imperative'] as String?,
      declarative: json ['declarative'] as String?,
      caution: json ['caution'] as String?,
      tip: json ['tip'] as String?,
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
      'code2': code2,
      'goodCode': goodCode,
      'badCode': badCode,
      'imperative': imperative,
      'declarative': declarative,
      'caution': caution,
      'tip': tip,
    };
  }
}
