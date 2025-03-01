class CategoryModel {
  final String? name;
  

  CategoryModel({this.name, });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      name: json['name'],
    
    );
  }
}
List<CategoryModel> categoryList = [
  CategoryModel(name: 'Hotels'),
  CategoryModel(name: 'Restaurants'),
  CategoryModel(name: 'Cafe'),
  CategoryModel(name: 'Fast Food'),
  CategoryModel(name: 'shopping'),
  CategoryModel(name: 'Attractions'),
];