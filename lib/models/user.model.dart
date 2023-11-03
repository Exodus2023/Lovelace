class UserModel {
  String? _id;
  String? _name;
  String? _picture;
  String? _email;
  String? _password;
  String? _cep;

  userModel(
      {String? id,
      String? name,
      String? picture,
      String? email,
      String? password,
      String? cep}) {

    if (id != null) {
      _id = id;
    }
    if (name != null) {
      _name = name;
    }
    if (picture != null) {
      _picture = picture;
    }
    if (email != null) {
      _email = email;
    }
    if (password != null) {
      _password = password;
    }
    if (cep != null) {
      _cep = cep;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get picture => _picture;
  set picture(String? picture) => _picture = picture;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get cep => _cep;
  set cep(String? cep) => _cep = cep;

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _picture = json['picture'];
    _email = json['email'];
    _password = json['password'];
    _cep = json['cep'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = _id;
    data['name'] = _name;
    data['picture'] = _picture;
    data['email'] = _email;
    data['password'] = _password;
    data['cep'] = _cep;
    return data;
  }
}