class Recipe {
  int? id;
  int? minutes;
  int? serving;
  int? calories;
  String? title;
  String? image;
  String? steps;
  String? ingredients;


  Recipe({
    this.id,
    this.title,

  });

  factory Recipe.fronJson( Map json) {
    return Recipe(
      id: json['id'],
      title: json['title'],
    );
  }
}
