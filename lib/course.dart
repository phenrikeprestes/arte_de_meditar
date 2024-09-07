
import 'package:flutter/material.dart';
import 'package:site_chris_mobile/programaDoCurso.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 600){
      screenWidth * 0.5;
    }else{
      screenWidth * 1;
    }
    
    return Column(
      children: [
        Text('A Arte de Meditar é um curso completo em 5 módulos para você aprender todos os aspectos da meditação, dos mais básicos aos mais avançados.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Color.fromRGBO(141, 10, 7, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 20,),
        Programa()
       
        
      ],
    );
  }
}