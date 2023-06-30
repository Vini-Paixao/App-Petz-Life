// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:apppetlife/views/minhaConta.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeuPerfil extends StatefulWidget {
  const MeuPerfil({super.key});

  @override
  State<MeuPerfil> createState() => _MeuPerfilState();
}

class _MeuPerfilState extends State<MeuPerfil> {
  void _abrirAltararusu() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MinhaConta()));
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
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  'imagens/Pessoa 3.jpg',
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Nome:',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(69, 161, 255, 0.45),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 0.0,
                      color: Colors.black26,
                    )
                  ],
                )),
              ),
              Text(
                'Walter Menezes',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                height: 1,
                width: 300,
                color: Color.fromARGB(255, 212, 148, 255),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'RG:',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(69, 161, 255, 0.45),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 0.0,
                      color: Colors.black26,
                    )
                  ],
                )),
              ),
              Text(
                '33.857.015-9',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                height: 1,
                width: 300,
                color: Color.fromARGB(255, 212, 148, 255),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'CPF:',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(69, 161, 255, 0.45),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 0.0,
                      color: Colors.black26,
                    )
                  ],
                )),
              ),
              Text(
                '359.298.798-42',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                height: 1,
                width: 300,
                color: Color.fromARGB(255, 212, 148, 255),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Telefone:',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(69, 161, 255, 0.45),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 0.0,
                      color: Colors.black26,
                    )
                  ],
                )),
              ),
              Text(
                '(11) 99735-0899',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                height: 1,
                width: 300,
                color: Color.fromARGB(255, 212, 148, 255),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Endereço:',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(69, 161, 255, 0.45),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 0.0,
                      color: Colors.black26,
                    )
                  ],
                )),
              ),
              Text(
                'Rua Honório Santos, Nº 049',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                height: 1,
                width: 300,
                color: Color.fromARGB(255, 212, 148, 255),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  _abrirAltararusu();
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color.fromARGB(255, 165, 107, 255)),
                child: Text(
                  "Alterar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
