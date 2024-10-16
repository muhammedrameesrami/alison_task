import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Core/Commone/variables.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List list = [
    'assets/list1.jpeg',
    'assets/list2.jpeg',
    'assets/list3.jpeg',
    'assets/list4.jpeg',
    'assets/list5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.image),
        actions: [
          Icon(CupertinoIcons.search),
          Icon(Icons.favorite_border),
          Icon(CupertinoIcons.bell)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: h * 0.3,
              width: w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/homeimage1.jpeg'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'our Brand',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.045,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view all',
                        style: TextStyle(
                            color: Colors.black,
                            decorationColor: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: w * 0.045),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                      5,
                      (index) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                          child: Container(
                            height: h * 0.2,
                            width: w * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(list[index]))),
                          ),
                        );
                      },
                    )),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'suggested for you',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.045,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view all',
                        style: TextStyle(
                            color: Colors.black,
                            decorationColor: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: w * 0.045),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                      5,
                      (index) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                          child: Container(
                            height: h * 0.3,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(list[index]))),
                          ),
                        );
                      },
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
