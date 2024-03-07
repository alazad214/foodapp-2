import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp2/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "Font1"),
          home: Splash(),
        );
      },
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

var height, width;

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          "asset/images/boy.png",
          height: 100.h,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Ordar your food now",
          style: TextStyle(fontSize: 30.sp, fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Center(
              child: Text(
            "Order food and get delivery withing a few minutes to your dor",
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color.fromARGB(255, 117, 117, 117),
            ),
            textAlign: TextAlign.center,
          )),
        ),
        SizedBox(
          height: 90.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          },
          child: Padding(
            padding: EdgeInsets.all(25).w,
            child: Container(
              height: 45.h,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order Now",
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
