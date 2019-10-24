class Item {
  final String name;
  final int number;
  final String type;
  final double price;
  bool selected = false; //默认为未选中
  Item(
    this.name,
    this.number,
    this.type,
    this.price,
  );
}