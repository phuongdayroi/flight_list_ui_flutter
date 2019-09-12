class CityItem {
  final String id;
  final String cityId;
  final String name;
  final String date;
  final double discount;
  final double oldPrice;
  final double newPrice;
  final String imagePath;
  CityItem(this.id, this.cityId, this.name, this.date, this.discount,
      this.oldPrice, this.newPrice, this.imagePath);

  CityItem.fromJson(Map<dynamic, dynamic> json)
      : id = json["id"],
        name = json['name'],
        date = json['date'],
        cityId = json["cityid"],
        discount = json["discount"],
        oldPrice = json["oldprice"],
        newPrice = json["newprice"],
        imagePath = json["imagepath"];

  Map<String, dynamic> toJson() => {
        "id": id,
        'name': name,
        'date': date,
        'cityid': cityId,
        'discount': discount,
        'oldprice': oldPrice,
        'newprice': newPrice,
        'imagepath': imagePath,
      };
}
