import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tamil_recipe_book/screens/saivam.dart';

final List<String> imgList = [
  "assets/images/carou1.avif",
  "assets/images/carou2.avif",
  "assets/images/carou3.avif",
  "assets/images/carou4.avif",
  "assets/images/carou5.avif"
];

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0.0,
        // ignore: prefer_const_literals_to_create_immutables
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "சமையல் குறிப்புகள்",
            ),
            const Icon(
              Icons.menu,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                  child: Container(
                height: 45,
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25)),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: (() {}),
                    child: const Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(213, 0, 0, 0),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                        Text(
                          "தேடு",
                          style: TextStyle(
                            color: Color.fromARGB(204, 0, 0, 0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
          Container(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listcards.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 50,
                        width: 100,
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => saivam()));
                            }),
                            child: Image.asset(listcards[index].imageUrl)),
                      ),
                      InkWell(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => saivam()));
                          }),
                          child: Text(listcards[index].title))
                    ],
                  );
                })),
          ),
          CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child:
                              Image.asset(item, fit: BoxFit.cover, width: 1000),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          const Text(
            "பிரபலமான உணவுகள்",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: const Color.fromARGB(255, 228, 225, 225))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 220,
                  margin: const EdgeInsets.only(bottom: 5),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/card1.avif",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  "கோழி செட்டிநாடு",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "4.3",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 19, 18, 18), fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: const Color.fromARGB(255, 228, 225, 225))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 220,
                  margin: const EdgeInsets.only(bottom: 5),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/carou2.avif",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  "கோழி செட்டிநாடு",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "4.3",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 19, 18, 18), fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: const Color.fromARGB(255, 228, 225, 225))
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 220,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/card1.avif"),
                        fit: BoxFit.fill)),
              ),
              const Text("கோழி செட்டிநாடு"),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.star,
                    color: Colors.deepOrange,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "4.5",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              )
            ]),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}

class model {
  String imageUrl;
  String title;

  model(this.title, {required this.imageUrl});
}

List<model> listcards = [
  model("சைவம்", imageUrl: "assets/icons/veg.png"),
  model("அசைவம்", imageUrl: "assets/icons/non-veg.png"),
  model("நீர்மம்", imageUrl: "assets/icons/juice.png"),
  model("இனிப்பு", imageUrl: "assets/icons/sweets.png"),
  model("காரம்", imageUrl: "assets/icons/spicy.png"),
];
