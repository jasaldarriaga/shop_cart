import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppin_cart/controlador/controladorgeneral.dart';
import 'package:shoppin_cart/ui/menu.dart';
import 'package:shoppin_cart/ui/pag1_inicio.dart';
import 'package:shoppin_cart/ui/pag2_comprar.dart';
import 'package:shoppin_cart/ui/pag3_misproductos.dart';
import 'package:shoppin_cart/ui/pag4_acercade.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Shopping cart'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List paginas = [
  pag1_inicio(),
  pag2_comprar(),
  pag3_misproductos(),
  pag4_acercade()
];

class _MyHomePageState extends State<MyHomePage> {
  ControladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const menu(),
      body: Obx(() => paginas[control.posicionPagina]),
    );
  }
}
