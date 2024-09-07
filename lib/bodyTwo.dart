import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyTwo extends StatelessWidget {
  const BodyTwo({super.key});

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
        image: DecorationImage(image: AssetImage('images/yoga.jpg'),
        fit: BoxFit.cover
        ),
        color: Colors.white,
      ),
      child:Container(
        color: Color.fromRGBO(255, 255, 255, 0.7),
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text('Esta felicidade já está em você.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade900,
            ),
            ),
            Text('A meditação é a luz que a revela.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            Text('Você pode acessá-la agora.',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade900,
            ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  foregroundColor: Colors.white,
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
                  
                ),
                ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ) ,
    );
  }
}