import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  ProdukDetail({this.kodeProduk, this.namaProduk, this.harga});

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk"),
      ),
      body:Align(alignment: Alignment.topLeft,
      child:Column(children: [
        Text("Kode Produk : " + widget.kodeProduk.toString()),
        Text("Nama Produk : ${widget.namaProduk}"),
        Text("Harga : ${widget.harga}"),
      ],
      ),
    ),
    );
  }
}
  