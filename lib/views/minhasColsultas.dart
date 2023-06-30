// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MinhasConsultas extends StatefulWidget {
  const MinhasConsultas({super.key});

  @override
  State<MinhasConsultas> createState() => _MinhasConsultasState();
}

class _MinhasConsultasState extends State<MinhasConsultas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 165, 107, 255),
        title: Image.asset(
          "imagens/Logo.png",
          width: 50,
          height: 50,
        ),
        centerTitle: true,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 9,
              ),
              Text("Consultas",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ))),
              SizedBox(
                height: 9,
              ),
              Text("Veja abaixo suas consultas agendadas",
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
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Veterinário:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text("  Cleber",
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
                                Text("Especialidade:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ))),
                                     Text(" Odontologia",
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