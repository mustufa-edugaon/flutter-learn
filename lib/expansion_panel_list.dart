import 'package:flutter/material.dart';

class MyExpansionPanelList extends StatefulWidget {
  @override
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  List<Item> _data = generateItems(5);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expansion Panel List'),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: _data.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(item.headerValue),
                  );
                },
                body: ListTile(
                  title: Text(item.expandedValue),
                  subtitle: Text('To delete this item, click trash icon'),
                  trailing: Icon(Icons.delete_forever),
                  onTap: () {
                    setState(() {
                      _data.removeWhere((Item currentItem) => item == currentItem);
                    });
                  },
                ),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;
  Item({required this.expandedValue, required this.headerValue, this.isExpanded = false});
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}
