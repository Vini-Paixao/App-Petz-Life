// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Planos extends StatefulWidget {
  const Planos({super.key});

  @override
  State<Planos> createState() => _PlanosState();
}

class _PlanosState extends State<Planos> {
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset(
                  'imagens/Plano 1.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "PLANO PRATA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 179, 179, 179),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Mais Econômico",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(69, 161, 255, 0.45),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "O Plano Prata é a opção mais acessível que nós proporcionamos. Ele inclui consultas veterinárias, vacinas básicas, exames laboratoriais e descontos em medicamentos. Além disso, oferece suporte emergencial em casos de emergências médicas. É uma escolha econômica para garantir cuidados essenciais e manter a saúde dos animais de estimação em dia.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ))),
          ],
        ),
      ),
    );
  }
}
