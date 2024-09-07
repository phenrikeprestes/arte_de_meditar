import 'package:flutter/material.dart';

class BodyOne extends StatelessWidget {
  const BodyOne({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 400){
      screenWidth * 0.5;
    }else{
      screenWidth * 1;
    }

    return Container(
      width: screenWidth,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text('Sabe o que os grandes mestres iluminados da história da humanidade tinham em comum?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(141, 10, 7, 1)
          ),
          ),
          SizedBox(height: 20,),
          Image.asset('images/image.png'),

          SizedBox(height: 20,),

          Text('Exato',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(141, 10, 7, 1)
          ),
          ),
          Text('Todos eles encontraram a felicidade verdadeira',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(141, 10, 7, 1)
          ),
          ),
          Text('Todos eles eram grandes meditadores',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(141, 10, 7, 1)
          ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}