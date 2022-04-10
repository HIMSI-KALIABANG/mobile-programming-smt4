import 'package:flutter/material.dart';
import 'package:my_flutter/hello_world.dart';
import 'package:my_flutter/column_widget.dart';
import 'package:my_flutter/row_widget.dart';
import 'package:my_flutter/ui/produk_form.dart';
import 'package:my_flutter/ui/produk_detail.dart';
import 'package:my_flutter/ui/produk_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProdukPage()
    );
  }
}

//Fahmi Azzuhri Efki
//12200443
