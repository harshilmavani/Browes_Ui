import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List pic = [
    'asstes/images/CommercialFarming-1.jpg',
    'asstes/images/Farming-101-how-to-be-a-farmer-1.jpg',
    'asstes/images/shutterstock_2076194110.jpg',
  ];
  List name = [
    'Fine Cukumber',
    'Fine Cukumber',
    'Fine Cukumber',
  ];
  List list1 = ['Fresh', 'Juacy', 'Green Plenet'];
  int a = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.5,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(80),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Container(
                              height: 42,
                              width: 200,
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 5),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  hintText: 'Search',
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.person_pin,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'FING',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: Text(
                        'Porsche 911',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'SORT BY',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: Text(
                        'Price , Low to High',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: Container(
                  height: height * 0.48,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: height * 0.7,
                            width: width * 0.95,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset(0, 1),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: height * 0.27,
                                      width: width * 0.95,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            pic[index],
                                          ),
                                        ),
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15),
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -25,
                                      right: 20,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.orange,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              a = index;
                                            });
                                          },
                                          child: Icon(
                                            index == 0
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.04),
                                  child: Text(
                                    'U.S.A',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.04),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        name[index],
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '\$10,000',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 28,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      3,
                                      (index) => Container(
                                        height: height * 0.050,
                                        width: width * 0.28,
                                        decoration: BoxDecoration(
                                          color: Colors.orange.shade100,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            list1[index],
                                            style: TextStyle(
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
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
