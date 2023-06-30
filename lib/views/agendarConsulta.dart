// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:apppetlife/views/ConsultasAgendar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgendarConsulta extends StatefulWidget {
  const AgendarConsulta({super.key});

  @override
  State<AgendarConsulta> createState() => _AgendarConsultaState();
}

class _AgendarConsultaState extends State<AgendarConsulta> {
  void _abrirMinhasConsultas2() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Consultas2Agendar()));
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 9,
              ),
              Text("Pra quem é a consulta?",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ))),
              SizedBox(
                height: 9,
              ),
              Text("Selecione abaixo para qual animal deseja agendar",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ))),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _abrirMinhasConsultas2();
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Nome:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Doguinho Doido",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Idade:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  2 Anos",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Espécie:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Cachorro",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Raça:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Golden",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ), 
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white)),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _abrirMinhasConsultas2();
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Nome:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Blue",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Idade:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  2 Anos",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Espécie:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Pássaro",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Raça:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Arara-Azul",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ), 
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white)),
                            SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _abrirMinhasConsultas2();
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Nome:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Gatinhu",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Idade:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  4 Anos",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Espécie:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Gato",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Raça:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Persa",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 165, 107, 255),
                                  fontWeight: FontWeight.bold,
                                ))),
                              ],
                              ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ), 
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
