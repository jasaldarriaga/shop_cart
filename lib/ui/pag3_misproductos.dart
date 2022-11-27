import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shoppin_cart/controlador/controladorgeneral.dart';

class pag3_misproductos extends StatefulWidget {
  const pag3_misproductos({super.key});

  @override
  State<pag3_misproductos> createState() => _pag3_misproductosState();
}

class _pag3_misproductosState extends State<pag3_misproductos> {
  ControladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.pro.length,
                  itemBuilder: (BuildContext context, index) {
                    return Control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(Control.pro[index].imagen)),
                            title: Text(Control.pro[index].nombre),
                            subtitle: Text("Precio : " +
                                Control.pro[index].precio.toString() +
                                " | Cantidad : " +
                                Control.pro[index].cantidad.toString()),
                            trailing: Text(
                                (Control.pro[index].cantidad *
                                        Control.pro[index].precio)
                                    .toString(),
                                style: const TextStyle(fontSize: 25)),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar : " + Control.calcularTotal().toString(),
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    if (Control.calcularTotal() == 0) {
                      Alert(
                          context: context,
                          title: "Estado de Compra!",
                          type: AlertType.info,
                          desc: "No hay productos en el carro!!",
                          buttons: [
                            DialogButton(
                                child: const Text("Cerrar"),
                                onPressed: () {
                                  Control.LimpiarTodo();
                                  Navigator.pop(context);
                                  Control.cambiarPosicion(0);
                                })
                          ]).show();
                    } else {
                      Alert(
                          context: context,
                          title: "Estado de Compra!",
                          type: AlertType.success,
                          desc: "Compra realizada con exito!!",
                          buttons: [
                            DialogButton(
                                child: const Text("Cerrar"),
                                onPressed: () {
                                  Control.LimpiarTodo();
                                  Navigator.pop(context);
                                  Control.cambiarPosicion(0);
                                })
                          ]).show();
                    }
                  },
                  icon: Icon(Icons.save),
                  label: Text("Comprar"))
            ],
          ),
        ));
  }
}
