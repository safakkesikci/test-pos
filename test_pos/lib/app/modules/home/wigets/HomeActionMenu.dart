import 'package:flutter/material.dart';

class HomeActionMenu extends StatelessWidget {
  const HomeActionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        childAspectRatio: 3 / 2,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8.0),
        children: [
          HomeActionMenuItem(
            text: 'Add Customer',
            iconData: Icons.account_circle,
            color: Colors.amber[800],
          ),
          HomeActionMenuItem(
            text: 'Add Discount',
            iconData: Icons.campaign,
            color: Colors.brown[700],
          ),
          HomeActionMenuItem(
            text: 'Add New',
            iconData: Icons.new_label,
            color: Colors.deepPurple[800],
          ),
        ],
      ),
    );
  }
}

class HomeActionMenuItem extends StatelessWidget {
  const HomeActionMenuItem({Key? key, this.iconData, this.text, this.color})
      : super(key: key);

  final IconData? iconData;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(width: 2.0, color: Colors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Icon(
                this.iconData!,
                size: 42.0,
                color: this.color,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  this.text!,
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}
