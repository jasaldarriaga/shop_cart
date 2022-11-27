import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppin_cart/controlador/controladorgeneral.dart';
import 'package:shoppin_cart/ui/home.dart';

void main() {
  Get.put(ControladorGeneral());
  runApp(const MyApp());
}
