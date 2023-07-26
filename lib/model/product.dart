import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    String message;
    List<Datum> data;

    Product({
        required this.message,
        required this.data,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String name;
    String description;
    int price;
    int stock;
    String image;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    List<Review> reviews;

    Datum({
        required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.stock,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.reviews,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
    };
}

class Review {
    int id;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    int productId;
    String feedback;
    int rating;
    String username;

    Review({
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.productId,
        required this.feedback,
        required this.rating,
        required this.username,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        productId: json["product_id"],
        feedback: json["feedback"],
        rating: json["rating"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "product_id": productId,
        "feedback": feedback,
        "rating": rating,
        "username": username,
    };
}
