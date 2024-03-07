import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp2/profile.dart';
import 'package:foodapp2/searchpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List food = [
    "Burger",
    "Pizza",
    "Snacks",
    "boy",
  ];
  List food2 = [
    "Chicken Burger",
    "Cheese Pizza",
  ];

  List<Color> bgColor = [
    Color.fromARGB(255, 206, 206, 206),
    Color.fromARGB(255, 215, 255, 210),
    Color.fromARGB(255, 134, 134, 134),
    Color.fromARGB(255, 249, 255, 171),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20.r),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver to",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Color.fromARGB(255, 112, 111, 111),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text(
                        "Dhaka, Bangladesh",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Profile_s()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 40.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage("asset/images/profile.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        left: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ))
                  ],
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SearchPage()));
            },
            child: Container(
                alignment: Alignment.center,
                height: 45,
                margin: EdgeInsets.fromLTRB(8, 20, 8, 10),
                padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(155, 197, 197, 197),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Search your food here....",
                      style: TextStyle(fontSize: 14.sp, color: Colors.black54),
                    ),
                  ],
                )),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: ClipRRect(
                child: Image.asset("asset/images/banner.jpg"),
                borderRadius: BorderRadius.circular(15),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.redAccent),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: food.length,
                itemBuilder: (_, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: bgColor[index],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset("asset/images/${food[index]}.png")
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Populer",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.redAccent),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
