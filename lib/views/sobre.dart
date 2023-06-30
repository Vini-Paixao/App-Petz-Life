// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:apppetlife/views/configteste.dart';
import 'package:apppetlife/views/notificacoes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre extends StatefulWidget {
  const Sobre({Key? key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  void _launchURL() async {
    const url = 'https://www.google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir o URL: $url';
    }
  }

   void _abrirNoti() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Notificacoes()));
  }
   void _abrirConfig() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => configteste()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 165, 107, 255),
        title: Image.asset(
          "imagens/Logo.png",
          width: 50,
          height: 50,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              _abrirNoti();// Adicione 
              //aqui o código para as notificações
            },
            child: Icon(
              Icons.notification_add,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              
              _abrirConfig();
              // Adicione aqui o código para as configurações
            },
            child: Icon(
              Icons.settings,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Title(
                color: Color.fromARGB(255, 165, 107, 255),
                child: Text(
                  "Sobre nosso app",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Color.fromARGB(255, 165, 107, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Algumas de nossas funcionalidades",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Localização de Clínicas: Encontre clínicas próximas à sua localização no mapa.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Agendamento de Consultas: Marque suas consultas facilmente, selecionando a clínica e o horário desejados.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Notificações e Lembretes: Receba lembretes e notificações sobre suas consultas e exames médicos.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4. Informações de Saúde: Acesse informações detalhadas sobre condições de saúde, sintomas, tratamentos e prevenção.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5. Perfil Personalizado: Crie um perfil com informações médicas, histórico de consultas e alergias. ",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "6. Central de Mensagens: Comunique-se com os profissionais de saúde por meio de uma central de mensagens interna.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.justify,
                "Essas são algumas das principais funcionalidades oferecidas pelo aplicativo, focadas em facilitar o acesso a serviços médicos, fornecer informações relevantes e melhorar a comunicação entre pacientes e profissionais de saúde.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 151, 108, 187),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _launchURL,
                child: Text(
                  'Conheça nosso Site oficial',
                  style: GoogleFonts.poppins(
                    fontSize: 21,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 151, 108, 187),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
