import 'package:daryo_clone/news_madels.dart';
import 'package:flutter/material.dart';

class LastNews extends StatefulWidget {
  static List<News> list = [
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
    News(
        data: "00:20",
        title: "Mahalliy",
        imageUrl:
            "https://daryo.uz/static/2022/08/medium-photo_2022-03-11_12-18-17.jpg",
        newstext:
            "“Agrobank” “Daryo” nashrini sudga berdi. Bankirlar tahririyatni noxolislikda ayblamoqda",
        watchcount: 345),
  ];
  const LastNews({Key? key}) : super(key: key);

  @override
  State<LastNews> createState() => _LastNewsState();
}

class _LastNewsState extends State<LastNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: LastNews.list.length,
        itemBuilder: (BuildContext context, int index) {
          return myNews(LastNews.list[index]);
        },
      ),
    );
  }

  Widget myNews(News news) {
    return InkWell(
      onTap: (){
        setState(() {
          Navigator.pushNamed(context, "/data", arguments: {"news": news});
        });
      },
      child: Container(
        height: 130,
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  news.title,
                  style: const TextStyle(fontSize: 12, color: Colors.blue),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${news.data} | ${news.data} | ",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const Icon(
                      Icons.visibility,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      news.watchcount.toString(),
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(news.imageUrl),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    news.newstext,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            const Divider(
              thickness: 1,
              height: 2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
