import 'package:flutter/material.dart';
import 'package:Genius/models/items.dart';

class GenTable extends DataTableSource {
  List<Item> _items = <Item>[
    Item('item1', 100, 'item', 1699.0),
    Item('item2', 50, 'item', 4999.0),
  ];
  int _selectCount = 0;
    bool _isRowCountApproximate = false;

  @override
  DataRow getRow(int index) {


    if (index >= _items.length || index < 0) throw FlutterError('兄弟，取错数据了吧');

    final Item item = _items[index];
    return DataRow.byIndex(
        cells: <DataCell>[
          DataCell(Text(item.name)),
          DataCell(Text('${item.price}')),
          DataCell(Text('${item.number}')),
          DataCell(Text(item.type)),
        ],

        selected: item.selected,
        index: index,

        onSelectChanged: (isSelected) {
          selectOne(index, isSelected);
        });
  }

  void selectOne(int index,bool isSelected){
    Item item=_items[index];
    if (item.selected != isSelected) {

      _selectCount = _selectCount += isSelected ? 1 : -1;
      item.selected = isSelected;

      notifyListeners();
    }
  }

  void selectAll(bool checked) {
    for (Item _item in _items) {
      _item.selected = checked;
    }

    _selectCount = checked ? _items.length : 0;
    notifyListeners();
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _items.length;

  @override
  int get selectedRowCount => _selectCount;

  void _sort<T>(Comparable<T> getField(Item item),bool b){
    _items.sort((Item s1,Item s2){
      if(!b){
        final Item temp=s1;
        s1=s2;
        s2=temp;
      }
      final Comparable<T> s1Value=getField(s1);
      final Comparable<T> s2Value=getField(s2);
      return Comparable.compare(s1Value, s2Value);
    });
    notifyListeners();
  }

}