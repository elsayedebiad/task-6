import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data = [
    "الطالبات الجاريه",
    "الطالبات المعلقه",
    "الطالبات المكتمله",
    "الطلبات الملغيه",
    "جميع الطالبات"
  ];

  int SelectIndex = 0;
  bool check = true;

  String cubit = "assets/photos/cubit.jpg";
  String TextCubit = "الكويوبت دا رخم";
  String red = "assets/photos/read.png";
  String nulled = "";
  bool showImage = false;
  bool showText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task 6",
          style: TextStyle(fontFamily: 'elsayed', color: Colors.white54),
        ),
        centerTitle: false,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(7),
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: SelectIndex == index
                              ? Colors.blueAccent
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            data[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'elsayed2'
                                    ''),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                obscureText: check,
                style: const TextStyle(fontFamily: 'elsayed'),
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(fontFamily: 'elsayed'),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            // if (check == true) {
                            //   check = false;
                            // } else {
                            //   check = true;
                            // }
                            check = !check;
                          });
                        },
                        child: check == false
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),

                    // labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: showImage
                    ? Image.asset(
                        cubit,
                        width: 100,
                      )
                    : Text(
                        TextCubit,
                        style: const TextStyle(fontFamily: 'elsayed2', fontSize: 25),
                      ),
              ),
            ),
            Container(
              width: 250,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // TextCubit = Image.asset("assets/photos/cubit.jpg");
                      showImage = true;
                    });
                  },
                  child: const Text("Show Image",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showImage = false;
                      TextCubit =  "الكويوبت دا رخم";
                    });
                  },
                  child: const Text("Show text",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),),
            ),

            Container(
              width: 250,
              child: ElevatedButton(onPressed: () {
               setState(() {
                 showImage = false ;
                 TextCubit = "";
               });
              }, child: const Text("Reset",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),),
            )
          ],
        ),
      ),
    );
  }
}
