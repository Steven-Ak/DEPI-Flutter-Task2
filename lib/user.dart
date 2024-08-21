class User{
  int id;
  String name;
  String username;
  String address;
  String img;
  int following;
  int followers;

  User({required this.id,
    required this.name,
    this.username = "",
    this.address = "",
    this.img = "assets/images/nullperson.jpg",
    this.followers = 0,
    this.following = 0});
}