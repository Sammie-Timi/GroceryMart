class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final String category;
  final String? details;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.category,
    this.details,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    name: json['name'],
    image: json['image'],
    price: json['price'].toDouble(),
    category: json['category'],
    details: json ['details']
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'image': image,
    'price': price,
    'category': category,
    'details' : details
  };
}