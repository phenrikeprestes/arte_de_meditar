import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Programa extends StatelessWidget {
  const Programa({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 600){
      screenWidth * 0.5;
    }else{
      screenWidth * 1;
    }

    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('images/logo_templo.jpg',
          width: 100,
          ),
          SizedBox(height: 25,),
          Text('Programa do Curso',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20,),
          //Title
          Text('A Arte de Meditar',
          style: TextStyle(
            color: Color.fromRGBO(141, 10, 7, 1),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text('Curso Completo de Meditação',
          style: TextStyle(
            fontSize: 25,
          ),
          ),
          SizedBox(height: 20,),
          //Modulo 1
          Text('Módulo 1: Apresentação e estrutura do curso',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10,),
          //Modulo 2
          Text('Módulo 2: O que não é a meditação',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10,),
          //Modulo 3
          Text('Módulo 3: O que é a meditação',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Text('• Apresentação ',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 1 - O que é a meditação',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 2 - A meditação na visão de seus criadores',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 3 - Parinamas',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          //Modulo 4
          Text('Módulo 4: A prática da meditação',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Text('• Aula 1 - Contexto, ambiente, tempo, equipamentos, vestuário',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 2 - Aspectos corporais: nutrição e hidratação, saúde e doença',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 3 - Aspectos corporais: relaxamento e consciência corporal',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 4 - Aspectos corporais: respiração',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 5 - Aspecto mentais',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 6 - Orientações para a prática',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
            ],
          ),
           SizedBox(height: 10,),
      
          Text('Módulo 5: Perguntas e respostas',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Text('• Aula 1 - Perguntas e respostas parte 1',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              Text('• Aula 2 - Perguntas e respostas parte 2',
              style: TextStyle(
            fontSize: 18,
          ),
              ),
              SizedBox(height: 25,)
            ],
          ),
          SizedBox(
                width: 250,
                height: 100,
                child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(141, 10, 7, 1), 
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 20)
                        ),
                      
                        onPressed: ()async{
                   final Uri url = Uri.parse('https://pay.hotmart.com/Q94943004C?bid=1725117744778');
                   if (await canLaunchUrl(url)) {
                   await launchUrl(url);
                 } else {
                 throw 'Não foi possível abrir o link $url';
              } 
                      },
                       child: Text('QUERO APRENDER A MEDITAR',
                       textAlign: TextAlign.center,
                       )),
              ),
              SizedBox(height: 25,),
      
        ],
      ),
    );
  }
}