import 'package:flutter/material.dart';
import 'package:site_chris_mobile/about.dart';
import 'package:site_chris_mobile/bodyOne.dart';
import 'package:site_chris_mobile/bodyThree.dart';
import 'package:site_chris_mobile/bodyTwo.dart';
import 'package:site_chris_mobile/commomQuestions.dart';
import 'package:site_chris_mobile/course.dart';
import 'package:site_chris_mobile/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 600){
      screenWidth * 0.5;
    }else{
      screenWidth * 1;
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 234, 147, 1),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
            child: Column(
              children: [
                Header(),
                BodyOne(),
                BodyTwo(),
                BodyThree(),
                CommomQuestions(),
                SizedBox(height: 25,),
                Course(),
                About(),
              ],
            ),
            ),
      ),
    );
  }
}