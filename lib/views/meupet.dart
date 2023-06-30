// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apppetlife/views/pet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MeuPets extends StatefulWidget {
  const MeuPets({super.key});

  @override
  State<MeuPets> createState() => _MeuPetsState();
}

class _MeuPetsState extends State<MeuPets> {
  void _abrirMeuPet() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => meuPet()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'imagens/Plano 1.png',
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
                        FontAwesomeIcons.paw,
                        color: Color.fromRGBO(69, 161, 255, 0.45),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nome',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(69, 161, 255, 0.45))),
                      ),
                    ],
                  ),
                ],
              )),
              Text(
                'Doguinho Chique',
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
                        FontAwesomeIcons.paw,
                        color: Color.fromRGBO(69, 161, 255, 0.45),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Raça',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(69, 161, 255, 0.45))),
                      ),
                    ],
                  ),
                ],
              )),
              Text(
                'Cachorro Doido',
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
                        FontAwesomeIcons.paw,
                        color: Color.fromRGBO(69, 161, 255, 0.45),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Idade',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(69, 161, 255, 0.45))),
                      ),
                    ],
                  ),
                ],
              )),
              Text(
                '4 Anos',
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
                        FontAwesomeIcons.paw,
                        color: Color.fromRGBO(69, 161, 255, 0.45),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Apelido',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(69, 161, 255, 0.45))),
                      ),
                    ],
                  ),
                ],
              )),
              Text(
                'Pai de 2 ',
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
                  _abrirMeuPet();
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
