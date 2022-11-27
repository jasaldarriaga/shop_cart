import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppin_cart/controlador/controladorgeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  ControladorGeneral control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: UserAccountsDrawerHeader(
                  //currentAccountPicture: Image.asset('assets/usuario.jpg'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cmumonica.es/wp-content/uploads/2019/02/silueta-mujer-fot-carnet.png"),
                  ),
                  accountName: Text('Jairo Saldarriaga'),
                  accountEmail: Text('Juandasa18@gmail.com')),
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  control.cambiarPosicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on_outlined),
                title: Text('Comprar'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  control.cambiarPosicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text('Productos'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  control.cambiarPosicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Acerca de...'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  control.cambiarPosicion(3);
                },
              )
            ]))
          ],
        ),
      ),
    );
  }
}
