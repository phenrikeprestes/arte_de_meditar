import 'package:flutter/material.dart';

class BodyThree extends StatelessWidget {
  const BodyThree({super.key});

  @override
  Widget build(BuildContext context) {


    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 600){
      screenWidth * 0.5;
    }else{
      screenWidth * 1;
    }

    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Text('O curso online ',
                style: TextStyle(
                  color: Color.fromRGBO(141, 10, 7, 1),
                  fontSize: 18,
                ),
                ),
              Text('A Arte de Meditar ',
                style: TextStyle(
                  color: Color.fromRGBO(141, 10, 7, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('foi feito para você que quer paz, ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color.fromRGBO(141, 10, 7, 1),
                  fontSize: 18,
                ),
                ),
                Text('felicidade e bem-estar',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color.fromRGBO(141, 10, 7, 1),
                  fontSize: 18,
                ),
                ),
                Image.asset('images/banner2.jpg',
                  width:  screenWidth / 1.5 ,
                ),
                SizedBox(height: 25,),
            ],
          ),
        ],
      ),
    );
  }
}