import 'package:flutter/material.dart';
import 'package:my_flutter/ui/produk_form.dart';
import 'package:my_flutter/ui/produk_detail.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () async {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          //List 1
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),
          //List 2
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 5000000,
          ),
          //List 3
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          )
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  ItemProduk({this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => ProdukDetail(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,
                    )));
      },
    );
  }
}
