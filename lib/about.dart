import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth < 400){
      screenWidth * 0.5;
    }else{
      screenWidth * 1;
    }

    return Container(
            child: Column(
              children: [
                SizedBox(height: 25,),
                Text('Sobre o Professor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade900,
                ),
                ),
                SizedBox(height: 25,),
                Image.asset('images/cris.png',
                width: 400,
                ),
                SizedBox(height: 20,),
                Text('Meu nome é Christian Rocha.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 300,
                  child: Text('Descobri a meditação há cerca de 20 anos nas artes marciais. Comecei minha jornada como professor de meditação em 2011 e desde então tenho ensinado e ajudado muitas pessoa a vivenciar o silêncio e trazer a paz interior para suas vidas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                ),

                SizedBox(height: 25,),

                Text('Ficou com dúvidas sobre o curso A Arte de Meditar? Precisa de ajuda? Fale comigo pelo email ou pelo WhatsApp.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red.shade900,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                      final Uri whatsappUri = Uri.parse('https://wa.me/+5535991020904');
                      if (await canLaunchUrl(whatsappUri)) {
                      await launchUrl(whatsappUri);
                  } else {
                    throw 'Não foi possível abrir $whatsappUri';
                  }
                      },
                      child: Image.asset('images/whats.png',
                      width: 100,
                      ),
                    ),

                    InkWell(
                      onTap: () async {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: 'contato@aartedemeditar.org',
                    
                  );
                  if (await canLaunchUrl(emailUri)) {
                    await launchUrl(emailUri);
                  } else {
                    throw 'Não foi possível abrir o e-mail';
                  }
                      },
                      child: Image.asset('images/email.png',
                      width: 80,
                      ),
                    ),

                  ],
                )
              ],
            ),
    );        
  }
}