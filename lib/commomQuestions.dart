import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommomQuestions extends StatelessWidget {
  const CommomQuestions({super.key});

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
              image: DecorationImage(image: AssetImage('images/background.jpeg'),
              fit: BoxFit.cover,
              )
            ),

            //Perguntas:
            child: Column(
              children: [
                SizedBox(height: 25,),
                Text('Dúvidas Frequentes :',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
                ),

                SizedBox(height: 25,),
                //Perguntas

              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        
                        Container(
                          width: 400,
                          child: Column(
                            children: [
                              SizedBox(height: 25,),
                              //Pergunta 1
                              Text('Nunca meditei. Consigo começar do zero com o curso A Arte de Meditar?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              ),
                              SizedBox(height: 25,),
                              //Resposta 1
                              Container(
                                width: 400,
                                child: Text('Sim. Ao longo dos 5 módulos você aprenderá não apenas a teoria, mas principalmente a prática, mesmo que nunca tenha tido contato com a',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 18,
                                ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                     SizedBox(height: 25,),
                     //Pergunta 2:
                          SizedBox(
                            width: 400,
                            child: Container(
                              
                              child: Column(
                                children: [
                                  //Pergunta 1
                                  Text('Sou muito ansioso e agitado. Acho que a meditação não é para mim.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  ),
                                  SizedBox(height: 25,),
                                  //Resposta 2
                                  Container(
                                    width: 400,
                                    child: Text('Pessoas ansiosas são as que mais se beneficiam com a meditação. Dedique-se às aulas do curso A Arte de Meditar e você vai aprender  a encontrar paz e equilíbrio emocional.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                
                          SizedBox(height: 25,),
                          //Pergunta 3:
                          SizedBox(
                            width: 400,
                            child: Container(
                              child: Column(
                                children: [
                                  //Pergunta 1
                                  Text('Não tenho tempo para meditar. Já comecei outros cursos e parei no meio por isso.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  ),
                                  SizedBox(height: 25,),
                                  //Resposta 2
                                  Container(
                                    width: 400,
                                    child: Text('Todas as aulas do curso A Arte de Meditar foram pensadas para que você possa segui-las no seu próprio ritmo, mesmo que você tenha pouco tempo para meditar.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 18,
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                
                          Image.asset('images/logo2.png',
                          width: 300,
                          )
                
                
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                height: 100,
                child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(253, 228, 150, 1),
                          foregroundColor: Color.fromRGBO(141, 10, 7, 1), 
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
              SizedBox(height: 50,)
              ],
            ),

    ); 
  }
}