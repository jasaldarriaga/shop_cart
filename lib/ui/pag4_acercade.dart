import 'package:flutter/material.dart';

class pag4_acercade extends StatefulWidget {
  const pag4_acercade({super.key});

  @override
  State<pag4_acercade> createState() => _pag4_acercadeState();
}

class _pag4_acercadeState extends State<pag4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Jairo Alonso'),
            subtitle: Text('Nombres'),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text('Sadarriaga Z.'),
            subtitle: Text('Apellidos'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Juandasa18@gmail.com'),
            subtitle: Text('Email'),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('3003607329'),
            subtitle: Text('Movil'),
          )
        ],
      ),
    );
  }
}
