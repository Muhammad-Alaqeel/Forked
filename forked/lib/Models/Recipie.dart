class Recipe {
  int? id;
  String? title;
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
