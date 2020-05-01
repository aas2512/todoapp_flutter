class CategoriaModel {
 int id;
 String categoryName;
 String categoryDescription;

  categoryMap(){
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['name'] = categoryName;
    map['description'] = categoryDescription;

    return map;
  }

}
