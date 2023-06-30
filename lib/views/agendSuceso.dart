// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AgendSucesso extends StatefulWidget {
  const AgendSucesso({super.key});

  @override
  State<AgendSucesso> createState() => _AgendSucessoState();
}

class _AgendSucessoState extends State<AgendSucesso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    appBar: AppBar(
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
        padding: EdgeInsets.symmetric(vertical: 200),
        child: Center(
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 165, 107, 255),
                        ),
                        child: Icon(
                          FontAwesomeIcons.check,
                          size: 90,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16,),
                      Text('Consulta Agendada com Sucesso!', textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 190, 147, 255),
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
      );
  }
}