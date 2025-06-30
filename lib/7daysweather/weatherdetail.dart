import 'package:flutter/material.dart';

class WeatherDetail extends StatefulWidget {
  const WeatherDetail({Key? key}) : super(key: key);

  @override
  State<WeatherDetail> createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff331C71),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff5841A9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '7 Days ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff5841A9),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.more_vert, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 320,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xff5842A9),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Image(
                                  height: 150,
                                  image: AssetImage('assets/icon/cloudy2.png'),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    "Most Cloudy",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 90.0, left: 70),
                            child: Text(
                              '19°',
                              style: TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 140.0,
                              left: 130,
                            ),
                            child: Text(
                              '  / 15°',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0, left: 8),
                            child: Column(
                              children: const [
                                Image(
                                  height: 40,
                                  image: AssetImage(
                                    'assets/icon/protection.png',
                                  ),
                                ),
                                Text(
                                  '30°',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Precipitation',
                                  style: TextStyle(
                                    fontSize: 16,

                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0, left: 8),
                            child: Column(
                              children: const [
                                Image(
                                  height: 40,
                                  image: AssetImage('assets/icon/drop.png'),
                                ),
                                Text(
                                  '20°',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Humidity',
                                  style: TextStyle(
                                    fontSize: 16,

                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0, right: 8),
                            child: Column(
                              children: const [
                                Image(
                                  height: 40,
                                  image: AssetImage('assets/icon/wind.png'),
                                ),
                                Text(
                                  '8km/h',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Wind Speed',
                                  style: TextStyle(
                                    fontSize: 16,

                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Monday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/cloudy.png'),
                        ),
                        SizedBox(width: 6),
                        Text('Cloudy', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text('+22°', style: TextStyle(color: Colors.white)),
                    Text('+18°', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tuesday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/cloudy.png'),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Partly Sun',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text('+22°', style: TextStyle(color: Colors.white)),
                    Text('+16°', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wednesday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/cloud1.png'),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Light Rain',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text('+20°', style: TextStyle(color: Colors.white)),
                    Text('+16°', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Thursday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/cloudy.png'),
                        ),
                        SizedBox(width: 6),
                        Text('Sunny', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text('+25°', style: TextStyle(color: Colors.white)),
                    Text('+17°', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Friday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/cloudy2.png'),
                        ),
                        SizedBox(width: 6),
                        Text('Overcast', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text('+19°', style: TextStyle(color: Colors.white)),
                    Text('+17°', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Saturday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/raining.png'),
                        ),
                        SizedBox(width: 6),
                        Text('Showers', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text('+21°', style: TextStyle(color: Colors.white)),
                    Text('+15°', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sunday', style: TextStyle(color: Colors.white)),

                    Row(
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage('assets/icon/sunny.png'),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Mostly Sun',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text('+24°', style: TextStyle(color: Colors.white)),
                    Text('+16°', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
