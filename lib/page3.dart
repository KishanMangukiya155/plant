import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({
    super.key,
    this.image,
    this.text,
    this.prise,
    this.name1,
  });

  final image;
  final text;
  final prise;
  final name1;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Map<String, dynamic>> namelist3 = [
    {
      'image': "assets/images/Days.png",
      'name': "20",
      'name2': "Days",
    },
    {
      'image': "assets/images/height.png",
      'name': "4.5\"",
      'name2': "Height",
    },
    {
      'image': "assets/images/humidity.png",
      'name': "85%",
      'name2': "Humidiry",
    },
    {
      'image': "assets/images/diameter.png",
      'name': "4.5",
      'name2': "Diameter",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3cf91),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [Icon(Icons.arrow_back)],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 500,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      width: 360,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, left: 15),
                                child: Container(
                                  height: 25,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      'Indoor',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: "DellaRespira-Regular"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 28),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(widget.text,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "DellaRespira-Regular",
                                            fontSize: 25)),
                                    SizedBox(height: 3),
                                    Text(widget.name1,
                                        style: TextStyle(
                                            fontFamily: "DellaRespira-Regular",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Color(0xff2A8C53))),
                                    SizedBox(height: 24),
                                    Text(
                                      widget.prise,
                                      style: TextStyle(
                                          fontFamily: "DellaRespira-Regular",
                                          fontSize: 25,
                                          color: Color(0xff2A8C53),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  namelist3.length,
                                  (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 6),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 32,
                                                width: 32,
                                                child: Center(
                                                  child: Image.asset(
                                                      namelist3[index]['image'],
                                                      height: 18,
                                                      width: 18),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Color(0xffF3cf91),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10)),
                                                )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(namelist3[index]['name'],
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff2A8C53),
                                                        fontFamily:
                                                            "DellaRespira -Regular",
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(namelist3[index]['name2'],
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "DellaRespira -Regular")),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffeaf0ec),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40))),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'DellaRespira-Regular'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "\"Artificial aloe Plant\" is most in demand, because of it's\n"
                                "simple shape. This plant can also survive outdoor. The\n"
                                "\"Artificial aloe Plant\"can be used in any incerior and in\n"
                                "a modern environment.",
                                style: TextStyle(
                                    fontSize: 13.5,
                                    fontFamily: 'DellaRespira-Regular'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, top: 40, right: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Categroy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DellaRespira-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Indoor',
                                style: TextStyle(
                                    fontFamily: "DellaRespira-Regular"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Plant',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DellaRespira-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Faux',
                                style: TextStyle(
                                    fontFamily: "DellaRespira-Regular"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Size',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DellaRespira-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Small',
                                style: TextStyle(
                                    fontFamily: "DellaRespira-Regular"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A8C53),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              fontFamily: "DellaRespira-Regular",
                              color: Colors.white,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: -250,
                child: Container(
                  height: 350,
                  width: 10,
                  child: Image.asset(
                    widget.image,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
