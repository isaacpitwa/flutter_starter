class RegisterModel {
  late String email;
  late String password;
  late String fName;
  late String lName;
  late String phone;

  RegisterModel({required this.email, required this.password,required  this.fName, required this.lName, required this.phone});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    return data;
  }
}
