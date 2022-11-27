import 'package:get/get.dart';
import 'package:shoppin_cart/clases/productos.dart';

class ControladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Tennis Timberlake",
        "https://static.dafiti.com.co/p/timberlake-0155-6112771-1-product.jpg",
        0,
        120000));
    pro.add(productos(
        2,
        "Tennis Tommy",
        "https://static.dafiti.com.co/p/tommy-hilfiger-5408-0687102-1-product.jpg",
        0,
        210000));
    pro.add(productos(
        3,
        "Tennis Skechers",
        "https://static.dafiti.com.co/p/skechers-1729-9166601-2-catalog-new.jpg",
        0,
        100000));
    pro.add(productos(
        4,
        "Tennis Tellenzi",
        "https://static.dafiti.com.co/p/tellenzi-0891-3161302-1-catalog-new.jpg",
        0,
        127000));
    pro.add(productos(
        5,
        "Tennis Skechers Running",
        "https://static.dafiti.com.co/p/skechers-9845-4040701-2-catalog-new.jpg",
        0,
        156000));
    //Todo: onInit
    super.onInit();
  }

  void cambiarPosicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void LimpiarTodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
