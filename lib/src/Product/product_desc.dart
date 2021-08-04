class Item {
  int id;
  String name;
  String description;
  String image;
  double rating;
  int ratingCount;
  double price;
  int color;

  Item({
    this.id,
    this.name,
    this.description,
    this.image,
    this.rating,
    this.ratingCount,
    this.price,
    this.color,
  });
}

List<Item> demoItems = [
  Item(
    id: 1,
    name: 'Burger',
    description: "A grilled beef patty on a bun is called a burger. You can use the word burger as a casual shorthand for hamburger, which is ground or minced beef that's fried and served on a bun. A burger can also be made of other ingredients, like turkey or tofu or lamb.",
    image: 'assets/images/1.png',
    rating: 5,
    ratingCount: 1005,
    price: 1.50,
    color: 0xFFFFFFFF,
  ),
  Item(
    id: 2,
    name: 'Grilled Chicken',
    description: "Barbecue chicken consists of chicken parts or entire chickens that are barbecued, grilled or smoked. There are many global and regional preparation techniques and cooking styles. Barbecue chicken is often seasoned or coated in a spice rub, barbecue sauce, or both.",
    image: 'assets/images/2.png',
    rating: 4.5,
    ratingCount: 75,
    price: 2,
    color: 0xFFFFFFFF,
  ),
  Item(
    id: 3,
    name: 'Pizza',
    description: "Pizza is an Italian dish consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    image: 'assets/images/3.png',
    rating: 4,
    ratingCount: 165,
    price: 1.5,
    color: 0xFFFFFFFF,
  ),
  Item(
    id: 4,
    name: 'French Fries',
    description: "French fries, or simply fries, chips, finger chips, hot chips or French-fried potatoes, are deep-fried potatoes, which have been cut into batons.",
    image: 'assets/images/4.png',
    rating: 3,
    ratingCount: 25,
    price: 5,
    color: 0xFFFFFFFF,
  ),
];