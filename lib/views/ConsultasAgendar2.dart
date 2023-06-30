// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apppetlife/views/agendSuceso.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Consultas2Agendar extends StatefulWidget {
  const Consultas2Agendar({super.key});

  @override
  State<Consultas2Agendar> createState() => _Consultas2AgendarState();
}

class _Consultas2AgendarState extends State<Consultas2Agendar> {
  void _abrirMinhasConsultasAgendadas() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AgendSucesso()));
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
          Icon(
            Icons.notification_add,
            size: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55,
              ),
              Text(
                  "Qual método de atendimento você deseja agendar sua consulta?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 190, 147, 255),
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20,
              ),
              Text("Selecione um método abaixo:",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  _abrirMinhasConsultasAgendadas();
                },
                child: Container(
                  width: 300,
                  height: 220,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(66, 80, 80, 80),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0.0, 8)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 190, 147, 255),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Atendimento Presencial',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Icon(
                          FontAwesomeIcons.notesMedical,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  _abrirMinhasConsultasAgendadas();
                },
                child: Container(
                  width: 300,
                  height: 220,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(66, 80, 80, 80),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0.0, 8)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 190, 147, 255),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Atendimento Virtual',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Icon(
                          FontAwesomeIcons.computer,
                          color: Colors.white,
                        )
                      ],
                    ),
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
