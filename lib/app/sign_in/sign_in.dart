// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Time Tracker',
        )),
        elevation: 5.0,
      ),
      body: _BuildContent(),
      backgroundColor: Colors.grey[400],
    );
    //sblumnya widte dari body adalah container
    //berisi banyak container(ziedbox) kita extrat dgb klik kanan
    //kasih nama widget baru BuildContent
  }
}

class _BuildContent extends StatelessWidget {
  const _BuildContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        // color: Colors.yellow, padding widget object gak ada color!
        child: Column(
          //buat tinggi center
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //ingat gak akan efect apa2 sama lebar width maka yg harus dibenahi adalah
            //width columnnya! yaitu pada xlcross yg kesamping dari colum itu yg diset
            //stlah xlcross diset dgn strecth maka akan memenuhi lebar dari body
            //nah sltahnya sizeboxnya utk width gak usah diisi cukup tinggi saja!
            Text('Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              onPressed:
                  () {}, //ntr nnti ganti dgn function tingal manggil function
              //saja atau variable local disini _variable_func
              child: Text('Sign In With Google'),
            )
          ],
        ));
  }
}

/*
caraatur format document ctrl+shift +I
check medium coding-with-flutter andrea
1.langakah pertaman utk container dgn banyak macam yg sama di childnya
   pisahkan jadi 1 widget buat diextrat nanti jadi build function
2.stalah itu ganti container dengan  paddnng ,paddingini gak ada color
  dia jadi object widget dalamnya ada property padding dan ada child nah chldnya otu column    
3.ingat utk misalhkan container dgn containerlain perlu jarak 
  saat ini dalam column kita pakai sizedBox height an kalau horisontal kita pake width
  sizebbos adalah space fix pemisah antar widget
  jadi initinya buat layout dulu baru kita buat text2 dan isianya 
  ini kita buang ganti dengan SignIn diatas
   // Container(
            //   color: Colors.brown,
            //   child: SizedBox(
            //     height: 100,
            //     // width: 100, gak dipakai karna ikut column parent widthnya!
            //   ),
            //),

oya tentan gwarna kalau material color itu berasal dari colorSwatch
ada tingkatannya 
primarySwatch: Colors.indigo
lihat saja dgn sorot definition mis grey[0...900] mis kita pilih grey agak terang 
tinggal tulis grey[300] mkin besar angka makin gelap


*/
/*untk ubah component macam button kita gunakan property shape:
kit mau btton ada bundar tepy2nya maka pilih roundeRectangeBorder(
  border:
)



*/