import 'package:flutter/material.dart';

import 'news_madels.dart';

class DataPage extends StatelessWidget {
   const DataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, News>;
    final News news = args["news"]!;
    return Scaffold(
      appBar: AppBar(title: Text(news.title, style: const TextStyle(color: Colors.white,),),),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          // const SizedBox(height: 4.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${news.data} | ${news.data}", style: const TextStyle(fontSize: 16, color: Colors.grey),),
              Row(
                children:  [
                  const Icon(Icons.visibility, color: Colors.blue,),
                  const SizedBox(width: 5.0,),
                  Text(news.watchcount.toString(), style: const TextStyle(color: Colors.blue,),),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12.0,),
          Text(news.newstext, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
          const SizedBox(height: 12.0,),
          Image.network(news.imageUrl),
          const Text("Tahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandiTahririyatga murojaat qilgan nishonlik tadbirkor Gulmurod Berdiyev Nishon tumanidagi xonadonlarga yetkazib berilgan chorva mollari uchun 650 million so‘m mablag‘ini ololmay sarson bo‘layotganini, shu sabab aholiga tarqatilgan chorvalarini qaytarib olishga majburligini, bu esa aholi noroziligiga sabab bo‘layotganini bildirgandi", style: TextStyle(color: Colors.grey, fontSize: 16.0,),),
        ],
      ),
    );
  }
}
