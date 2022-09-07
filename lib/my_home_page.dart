import 'package:flutter/material.dart';

import 'last_news.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<bool> list = List.generate(2, (_) => false);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 200.0,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Colors.cyanAccent,
                        Colors.blue,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Daryo",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          ToggleButtons(
                            disabledColor: Colors.white,
                            selectedColor: Colors.blue,
                            borderColor: Colors.white,
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.circular(30.0),
                            isSelected: list,
                            onPressed: (int index) {
                              setState(() {
                                list[index] = !list[index];
                              });
                            },
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5, top: 0, right: 5, bottom: 0),
                                child: Text(
                                  "Lotincha",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5, top: 0, right: 5, bottom: 0),
                                child: Text(
                                  "Kirilcha",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Toshkent",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.sunny,
                                color: Colors.white,
                              ),
                              Text(
                                " +34.0",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          many(Icons.monetization_on_outlined, "1236.90"),
                          many(Icons.euro_outlined, "1287.09"),
                          many(Icons.currency_ruble_outlined, "3245.89"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  "So'nggi Yangiliklar",
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LastNews(),
                      ),
                    );
                  });
                },
              ),
              ListTile(
                title: const Text(
                  "Mahalliy",
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LastNews(),
                      ),
                    );
                  });
                },
              ),
              const Divider(
                thickness: 1.0,
                color: Colors.grey,
              ),
              ListTile(
                title: const Text(
                  "Dunyo",
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LastNews(),
                      ),
                    );
                  });
                },
              ),
              const Divider(
                thickness: 1.0,
                color: Colors.grey,
              ),
              ListTile(
                title: const Text(
                  "Sport",
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LastNews(),
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Daryo",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "So'nggi yangiliklar",
              ),
              Tab(
                text: "Mahalliy",
              ),
              Tab(
                text: "Eng ko'p o'qilgan",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LastNews(),
            LastNews(),
            LastNews(),
          ],
        ),
      ),
    );
  }

  Widget many(IconData icon, String curs) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          curs,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
