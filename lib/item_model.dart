
class Item {
  final String name;
  final String desc;
  final int price;
  final String image;

  Item({required this.name, required this.desc, required this.price, required this.image});

  Map toJson() {
    return {
      'name': name,
      'desc': desc,
      'price': price,
      'image': image,
    };
  }
}

List<Item> products = [
  Item(
      name: 'Pullover', desc: 'blue pullover', price: 20, image: 'assets/images/pullover.jpg'),
  Item(
      name: 'Jacket',
      desc: 'white',
      price: 30,
      image: 'assets/images/jacket.jpeg'),
  Item(
      name: 'Dress',
      desc: 'blue',
      price: 10,
      image: 'assets/images/dress.webp'),
  Item(
      name: 'T-Shirt',
      desc: 'orange',
      price: 8,
      image: 'assets/images/pullover2.jpeg'),
  Item(
      name: 'Shoes',
      desc: 'black',
      price: 25,
      image: 'assets/images/shoes.jpg'),
  Item(name: 'Skirt', desc: 'green', price: 40, image: 'assets/images/socks.webp'),
  Item(
      name: 'Jeans',
      desc: 'blue',
      price: 15,
      image: 'assets/images/hat.jpeg'),
  Item(name: 'Socks', desc: 'white', price: 8, image: 'assets/images/socks.webp'),
  Item(
      name: 'Pullover',
      desc: 'Red',
      price: 12,
      image: 'assets/images/socks.webp'),
  Item(
      name: 'Hat',
      desc: 'orange',
      price: 55,
      image: 'assets/images/socks.webp'),
];