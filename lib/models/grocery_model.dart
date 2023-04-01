class GroceryItemModel {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final String offer;

  GroceryItemModel(
      {this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imagePath,
      required this.offer});
}

var demoItems = [
  GroceryItemModel(
      id: 1,
      name: "Organic Bananas",
      description: "7pcs, Priceg",
      offer: '15 % OFF',
      price: 4.99,
      imagePath: "assets/images/grocery_images/banana.png"),
  GroceryItemModel(
      id: 2,
      offer: '12 % OFF',
      name: "Red Apple",
      description: "1kg, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/apple.png"),
  GroceryItemModel(
    id: 3,
    offer: '16 % OFF',
    name: "Bell Pepper Red",
    description: "1kg, Priceg",
    price: 4.99,
    imagePath: "assets/images/grocery_images/pepper.png",
  ),
  GroceryItemModel(
    id: 4,
    offer: '14 % OFF',
    name: "Ginger",
    description: "250gm, Priceg",
    price: 4.99,
    imagePath: "assets/images/grocery_images/ginger.png",
  ),
  GroceryItemModel(
    id: 5,
    offer: '12 % OFF',
    name: "Meat",
    description: "250gm, Priceg",
    price: 4.99,
    imagePath: "assets/images/grocery_images/beef.png",
  ),
  GroceryItemModel(
    id: 6,
    offer: '8 % OFF',
    name: "Chikken",
    description: "250gm, Priceg",
    price: 4.99,
    imagePath: "assets/images/grocery_images/chicken.png",
  ),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItemModel(
    id: 7,
    offer: '14 % OFF',
    name: "Dite Coke",
    description: "355ml, Price",
    price: 1.99,
    imagePath: "assets/images/beverages_images/diet_coke.png",
  ),
  GroceryItemModel(
    offer: '12 % OFF',
    id: 8,
    name: "Sprite Can",
    description: "325ml, Price",
    price: 1.50,
    imagePath: "assets/images/beverages_images/sprite.png",
  ),
  GroceryItemModel(
    id: 8,
    offer: '14 % OFF',
    name: "Apple Juice",
    description: "2L, Price",
    price: 15.99,
    imagePath: "assets/images/beverages_images/apple_and_grape_juice.png",
  ),
  GroceryItemModel(
    id: 9,
    offer: '13 % OFF',
    name: "Orange Juice",
    description: "2L, Price",
    price: 1.50,
    imagePath: "assets/images/beverages_images/orange_juice.png",
  ),
  GroceryItemModel(
    id: 10,
    offer: '10 % OFF',
    name: "Coca Cola Can",
    description: "325ml, Price",
    price: 4.99,
    imagePath: "assets/images/beverages_images/coca_cola.png",
  ),
  GroceryItemModel(
    id: 11,
    offer: '12 % OFF',
    name: "Pepsi Can",
    description: "330ml, Price",
    price: 4.99,
    imagePath: "assets/images/beverages_images/pepsi.png",
  ),
];
