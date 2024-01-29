import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Apple',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.5,
  description:
      'The best apple in the region and the best price of any grocery store. This item has essential vitamins for strengthening the body, resulting in a healthy life.',
);

ItemModel grape = ItemModel(
  itemName: 'Grape',
  imgUrl: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 7.4,
  description:
      'The best grape in the region and the best price of any grocery store. This item has essential vitamins for strengthening the body, resulting in a healthy life.',
);

ItemModel guava = ItemModel(
  itemName: 'Guava',
  imgUrl: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 11.5,
  description:
      'The best guava in the region and the best price of any grocery store. This item has essential vitamins for strengthening the body, resulting in a healthy life.',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'kg',
  price: 2.5,
  description:
      'The best kiwi in the region and the best price of any grocery store. This item has essential vitamins for strengthening the body, resulting in a healthy life.',
);

ItemModel mango = ItemModel(
  itemName: 'Mango',
  imgUrl: 'assets/fruits/mango.png',
  unit: 'kg',
  price: 2.5,
  description:
      'The best mango in the region and the best price of any grocery store. This item has essential vitamins for strengthening the body, resulting in a healthy life.',
);

ItemModel papaya = ItemModel(
  itemName: 'Papaya',
  imgUrl: 'assets/fruits/papaya.png',
  unit: 'kg',
  price: 8,
  description:
      'The best papaya in the region and the best price of any grocery store. This item has essential vitamins for strengthening the body, resulting in a healthy life.',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Fruits',
  'Vegetables',
  'Meats',
  'Cereals',
  'Dairy',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 2,
  ),
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  name: 'Jane Doe',
  email: 'janedoe@gmail.com',
  phone: '99 9 9999-9999',
  cpf: '999.999.999-99',
  password: '',
);
