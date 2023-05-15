import 'package:flutter/material.dart';

class Fic4CircleAvatar extends StatelessWidget {
  Fic4CircleAvatar({super.key});

  final List<Color> colors = [
    Colors.black,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC4 Circle Avatar'),
      ),
      body: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://i.ibb.co/PGv8ZzG/me.jpg'),
            radius: 100,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(children: [
            ...List.generate(
              colors.length,
              (index) => CircleAvatar(
                radius: 40,
                backgroundColor: colors[index],
              ),
            ),
          ])
        ],
      ),
    );
  }
}

/*
penggunaan operator spread('...') untuk mengeluarkan nilai-nilai dari hasil
fungsi ListGenerate() secara individual dan menempatkan ke children Row

Operator spread pada Dart digunakan untuk membuka/menyebar (spread) 
nilai-nilai dari sebuah iterable (seperti list atau set) ke dalam tempat 
yang dapat menerima nilai individual.

Dalam contoh kode di atas, hasil dari List.generate() adalah sebuah list
yang berisi dua buah CircleAvatar. Namun, karena kita ingin menempatkan 
setiap CircleAvatar secara individual ke dalam children dari Row, kita 
menggunakan operator spread untuk membuka nilai-nilai dalam list tersebut 
dan menempatkannya ke dalam children dari Row.

kalau tetap dipakai maka hapus [] pada row

*/
