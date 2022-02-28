
class UserModel{
  int id;
  String name;
  String email;
  String username;
  String phone;
  String profilePhotoUrl;
  String token;

  UserModel({
    this.id = 0, 
    required this.name, 
    required this.email, 
    required this.username,
    this.phone = '',
    this.profilePhotoUrl = '', 
    this.token = ''
  });

  factory UserModel.fromJson(Map<String, dynamic> json) 
    => UserModel(
      id: json['id'],
      name: json['name'], 
      email: json['email'], 
      username: json['username'],
      profilePhotoUrl: json['profile_photo_url']
  );

    // this.id = json['id'];
    // this.name = json['name'];
    // this.email = json['email'];
    // this.username = json['username'];
    // this.profilePhotoUrl = json['profile_photo_url'];
    // this.token = json['access_token'];
  

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'phone': phone,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}