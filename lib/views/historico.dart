// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:apppetlife/views/login.dart';
import 'package:apppetlife/views/notificacoes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  Widget _buildHistorico(String title, String text) {
    return Card(
      color: Color.fromARGB(181, 255, 255, 255),
      margin: EdgeInsets.all(0),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 165, 107, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          text,
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 151, 110, 179),
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  void _abrirLogin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  void _abrirNoti() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Notificacoes()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(children: [
          _buildHistorico(
              "1. Consulta mensal - Clinica Oscar Freire (14/05/2023)",
              "Consulta mensal realizada na clinica oscar Freire"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "2. Consulta mensal - Clinica Oscar Freire (14/06/2023)",
              "Consulta mensal realizada na clinica oscar Freire"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "3. Consulta mensal - Clinica Oscar Freire (14/07/2023)",
              "Consulta mensal realizada na clinica oscar Freire"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "4. Consulta mensal - Clinica Oscar Freire (14/08/2023)",
              "Consulta mensal realizada na clinica oscar Freire"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "5. Consulta mensal - Clinica Oscar Freire (14/09/2023)",
              "Consulta mensal realizada na clinica oscar Freire"),
          SizedBox(
            height: 20,
          ),
          _buildHistorico(
              "6. Consulta mensal - Clinica Oscar Freire (14/10/2023)",
              "Consulta mensal realizada na clinica oscar Freire"),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    ));
  }
}
