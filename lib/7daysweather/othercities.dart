import 'package:flutter/material.dart';

class OtherCities extends StatelessWidget {
  final List<Map<String, dynamic>> citiesWeather = [
    {
      "name": "Bac Giang",
      "image": "assets/icon/sunny.png",
      "description": "Sunny",

      "now": 25,
    },
    {
      "name": "Quang Tri",
      "image": "assets/icon/cloudy2.png",
      "description": "Cloudy",
      "now": 24,
    },
    {
      "name": "Nghe An",
      "image": "assets/icon/cloud1.png",
      "description": "Overcast",

      "now": 23,
    },
    {
      "name": "Lang Son",
      "image": "assets/icon/cloud1.png",
      "description": "Cool",

      "now": 19,
    },
    {
      "name": "Hai Phong",
      "image": "assets/icon/raining.png",
      "description": "Rainy",

      "now": 22,
    },
    {
      "name": "Can Tho",
      "image": "assets/icon/cloudy.png",
      "description": "Partly",
      "high": 31,
      "now": 26,
    },
    {
      "name": "Hue",
      "image": "assets/icon/sunny.png",
      "description": "Sunny",

      "now": 27,
    },
    {
      "name": "Quang Tri",
      "image": "assets/icon/sunny.png",
      "description": "Sunny",

      "now": 27,
    },
    {
      "name": "Nha Trang",
      "image": "assets/icon/cloudy.png",
      "description": "Cloudy",

      "now": 25,
    },
    {
      "name": "Vung Tau",
      "image": "assets/icon/cloudy2.png",
      "description": "Breezy",

      "now": 24,
    },
    {
      "name": "Phu Quoc",
      "image": "assets/icon/cloudy2.png",
      "description": "Breezy",

      "now": 24,
    },
    {
      "name": "Da Lat",
      "image": "assets/icon/cloud1.png",
      "description": "Foggy",

      "now": 18,
    },
    {
      "name": "Buon Ma Thuot",
      "image": "assets/icon/cloudy2.png",
      "description": "Windy",

      "now": 20,
    },
    {
      "name": "Thanh Hoa",
      "image": "assets/icon/cloudy.png",
      "description": "Misty",

      "now": 22,
    },
    {
      "name": "Phu Yen",
      "image": "assets/icon/cloudy.png",
      "description": "Misty",

      "now": 22,
    },
    {
      "name": "Vinh",
      "image": "assets/icon/cloudy2.png",
      "description": "Grey",

      "now": 23,
    },
    {
      "name": "Quy Nhon",
      "image": "assets/icon/sunny.png",
      "description": "Sunny",

      "now": 25,
    },
    {
      "name": "Pleiku",
      "image": "assets/icon/cloud1.png",
      "description": "Cool",

      "now": 19,
    },
    {
      "name": "Phan Thiet",
      "image": "assets/icon/sunny.png",
      "description": "Hot",

      "now": 27,
    },
    {
      "name": 'Truong Sa',
      "image": "assets/icon/sunny.png",
      "description": "Sunny",

      "now": 25,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff331C71),
      appBar: AppBar(
        backgroundColor: const Color(0xff331C71),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xff5841A9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 20,
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: const Text(
          'Other Cities',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color(0xff5841A9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                iconSize: 20,
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          children: citiesWeather.map((city) {
            return Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xff5841A9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(city['image'], height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city['name'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        city['description'],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    '+${city['now']}°',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
