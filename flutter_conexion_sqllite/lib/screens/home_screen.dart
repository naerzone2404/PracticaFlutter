import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomeScrem extends StatelessWidget {
  const HomeScrem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Scans'),
        actions: [IconButton(onPressed: () {
          print('Eliminar todos los scan');
        }, 
        icon: Icon(Icons.delete))],
      ),
      body: _CustomBody(),
      floatingActionButton: _CustomScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _CustomScanButton extends StatelessWidget {
  const _CustomScanButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
      // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      //                                               '#BA1725', // el color de laser rojo dentro del scans
      //                                               'Cancelar', // lo que dice el boton para cancelar la lectura del codigo
      //                                               false, // para habilitar
      //   Revisar con el video del profesor                                            ScanMode.QR);
      String barcodeScanRes = 'http://elcomercio.pe';
      print(barcodeScanRes);

    },
    child: Icon(Icons.center_focus_strong),
    );
  }
}

class _CustomBody extends StatelessWidget {
  const _CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index)=>ListTile(
        title: Text('http://depor.com'),
        subtitle: Text('id'),
        leading: Icon(Icons.newspaper), // pone el icono en la parte de inicio
        trailing: Icon(Icons.arrow_forward_ios_rounded), // pone el icono a la derecha o final de la pantalla
        onTap: (){
          print('Enviar al google maps o al navegador por defecto');
        },
      ),
    );
  }
}
