import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pos/routes/pos_routes.dart';

class PosDrawer extends StatelessWidget {
  const PosDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'AkMerkez Mağaza',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Ana Sayfa'),
            tileColor:
                Get.currentRoute == Routes.HOME ? Colors.grey[300] : null,
            onTap: () => {
              Get.back(),
              Get.offNamed(Routes.HOME),
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Siparişler'),
            onTap: () => {Get.back()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Müşteriler'),
            tileColor:
                Get.currentRoute == Routes.CUSTOMER ? Colors.grey[300] : null,
            onTap: () => {
              Get.back(),
              Get.offNamed(Routes.CUSTOMER),
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () => {Get.back()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Get.back()},
          ),
        ],
      ),
    );
  }
}
