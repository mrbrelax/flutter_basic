import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Null Safety";

  TextEditingController controller = TextEditingController();
  MyNumber myNumber = MyNumber(number: 0);
  // MyNumber myNumber = MyNumber(number: 0); => sih "number: 0" => di isi dari - 
  // MyNumber({required this.number});
  // MyNumber myNumber = MyNumber(number: 0); => lanjutan int number; => kalau ga di isi -
  // menggunakan late 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Insert a number',
                labelText: 'Number',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    myNumber.number = int.tryParse(controller.text) ?? 0;
                    // myNumber.number = int.tryParse(controller.text) ?? 0; => "?? 0;" itu -
                    // menggunakan operator double question mark lalu menggunakan nilai defaultnya
                    // menambahkan tanda "!" dibelakang artinya kalian yang menjamin bahwa -
                    // "int.tryParse(controller.text)" sudah pasti bukan null
                  });
                },
                child: Text('Calculate'),
              ),
            ),
            Text('RESULT : ${myNumber.number}'),
          ],
        ),
      ),
    );
  }
}

class MyNumber {
  int number;
  // int? number = null; => berarti tipe "?" bisa di isi dengan null
  // late int number; => late artinya sih field "int number" untuk saat ini ga di isi tapi nanti -
  // akan saya isi. (isinya ada dibawah):
  // MyNumber(){
  //   number = 10;
  // };
  // int number; => kalau ga di isi menggunakan late bisa langsung diisi seperti ini :
  // MyNumber(this.number);
  MyNumber({required this.number});
  // MyNumber({required this.number}); => required artinya bahwa sih number ini wajib di isi.

  int multiplyByTwo() => number * 2;
}


