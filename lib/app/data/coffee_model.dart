class CoffeeModel {
  String title, subTitle, desc, image, rating;
  double price;

  CoffeeModel({
    required this.title,
    required this.subTitle,
    required this.desc,
    required this.image,
    required this.rating,
    required this.price,
  });

  static List<CoffeeModel> listCoffee = [
    CoffeeModel(
      title: 'Black Coffee',
      subTitle: 'with sugar',
      desc:
          "Black coffee is as simple as it gets with ground coffee beans steeped in hot water, served warm. And if you want to sound fancy, you can call black coffee by its proper name: cafe noir. Since it isn't doctored up with milk or sugar, the quality of coffee is especially important.",
      image: 'assets/images/black-coffee-image.png',
      rating: '⭐5.0',
      price: 4.80,
    ),
    CoffeeModel(
      title: 'Cappuccino',
      subTitle: 'with chocolate',
      desc:
          "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk.",
      image: 'assets/images/cappucino-image.png',
      rating: '⭐4.4',
      price: 5.60,
    ),
    CoffeeModel(
      title: 'Cappuccino',
      subTitle: 'with beans',
      desc:
          "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds. An expertly made cappuccino should be rich, but not acidic and have a mildly sweet flavouring from the milk.",
      image: 'assets/images/coffee-beans-image.png',
      rating: '⭐4.4',
      price: 5.60,
    ),
    CoffeeModel(
      title: 'Ice Coffee',
      subTitle: 'with beans',
      desc:
          "Iced coffee is a coffee beverage served cold. It may be prepared either by brewing coffee normally (i.e. carafe, French press, etc.) and then serving it over ice or in cold milk, or by brewing the coffee cold. In hot brewing, sweeteners and flavoring may be added before cooling, as they dissolve faster. Iced coffee can also be sweetened with pre-dissolved sugar in water.",
      image: 'assets/images/ice-coffee.png',
      rating: '⭐4.6',
      price: 6.00,
    ),
  ];
}
