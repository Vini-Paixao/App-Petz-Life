// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificacoes extends StatefulWidget {
  const Notificacoes({super.key});

  @override
  State<Notificacoes> createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  Widget _buildHistorico(String title, String text) {
    return Card(
      color: Color.fromARGB(181, 255, 255, 255),
      margin: EdgeInsets.all(0),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 103, 178, 255))),
        ),
        subtitle: Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ),
    );
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
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(children: [
              Text(
                'CENTRAL DE NOTIFICAÇÕES',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 177, 60, 255))),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.gear,
                        color: Color.fromARGB(255, 141, 141, 141),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Configurar Notificações',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(150, 69, 255, 0.63))),
                        ),
                      )
                    ],
                  ),
                ],
              )),
              SizedBox(
                height: 16,
              ),
              _buildHistorico("QUESTIONÁRIO SAÚDE DO SEU PET",
                  "Preencha o Questionário Saúde do seu Pet e receba um plano de cuidados."),
              Text(
                'Preencher',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 177, 60, 255))),
              ),
            ]),
          ),
        ));
  }
}
