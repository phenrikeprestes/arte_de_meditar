import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 400){
      screenWidth * 0.5;
    }

   

    return SafeArea(
      child: Container(
        width: screenWidth,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/background.jpeg'),
          fit: BoxFit.cover,
          )
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Container(
              width: 200,
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                        width: 300,
                        child: Text('SUA PAZ AO SEU ALCANCE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.amberAccent.shade100,
                        )
                        ),
                                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Todo mundo diz que sua paz está dentro de você, mas ninguém consegue responder a pergunta: como é que eu chego lá? ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('A meditação é o começo desta resposta.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent.shade100,
                    )
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            Image.asset('images/arte.png',
            width: screenWidth / 2,
            ),
            
          ],
        )
      ),
    );
  }
}