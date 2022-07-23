class User {
  late int _userId;
  late String _firstName;
  late String _lastName;
  late int _age;
  late double _score;
  late DateTime _createdAt;
  late DateTime _updatedAt;
  late DateTime _deletedAt;

  User(this._userId, this._firstName, this._lastName);

  User.fromJson(Map<String, dynamic> parsedJson) {
    _userId = parsedJson['id'];
    _firstName = parsedJson['first_name'];
    _lastName = parsedJson['last_name'];
    _age = parsedJson['age'];
    _score = parsedJson['score'];
    _createdAt = parsedJson['created_at'];
    _updatedAt = parsedJson['updated_at'];
    _deletedAt = parsedJson['deleted_at'];
  }

  Map<String, dynamic> toJson() => {
        'id': _userId,
        'first_name': _firstName,
        'last_name': _lastName,
        'age': _age,
        'score': _score,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt
      };

  int get userId => _userId;
  String get firstName => _firstName;
  String get lastName => _lastName;
  int get age => _age;
  double get score => _score;
  DateTime get createdAt => _createdAt;
  DateTime get updatedAt => _updatedAt;
  DateTime get deletedAt => _deletedAt;
}
