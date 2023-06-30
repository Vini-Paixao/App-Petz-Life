// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Loja {
  final String nome;
  final String endereco;

  Loja(this.nome, this.endereco);
}

class LojasDisponiveisScreen extends StatelessWidget {
  final List<Loja> lojas1 = [
    Loja('Clínica Veterinária PetCenter',
        'Rua Fradique Coutinho, 987, CEP: 05416-001, Pinheiros'),
    Loja('Clínica Veterinária Bicho Feliz',
        'Avenida Rebouças, 987, CEP: 05401-100, Pinheiros'),
    Loja('Clínica Veterinária Animalis',
        'Avenida Engenheiro Luís Carlos Berrini, 789, CEP: 04571-000, , Itaim Bibi'),
    Loja('Clínica Veterinária Mundo Pet',
        'Rua Dr. Alceu de Campos Rodrigues, 456, CEP: 04544-000, Vila Nova Conceição'),
    Loja('Clínica Veterinária Vida Animal',
        'Rua Augusta, 789, CEP: 01305-100, Consolação'),
    Loja('Clínica Veterinária PetCare',
        'Rua Oscar Freire, 123, CEP: 01426-001, Jardins'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: lojas1.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 6, right: 5),
                        child: Icon(
                          FontAwesomeIcons.locationDot,
                          size: 20,
                          color: const Color.fromARGB(255, 168, 54, 244),
                        ),
                      ),
                      Text(lojas1[index].nome,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(160, 43, 255, 0.534),
                            fontWeight: FontWeight.bold,
                          ))),
                    ],
                  ),
                  subtitle: Text(lojas1[index].endereco,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 102, 102, 102),
                        fontWeight: FontWeight.w300,
                      ))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetalhesLojaScreen1(lojas1: lojas1[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'imagens/Mapa.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetalhesLojaScreen1 extends StatelessWidget {
  final Loja lojas1;

  DetalhesLojaScreen1({required this.lojas1});

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    color: Color.fromARGB(255, 165, 107, 255),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('4.5 ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        FontAwesomeIcons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        FontAwesomeIcons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        FontAwesomeIcons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        FontAwesomeIcons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        FontAwesomeIcons.starHalf,
                        color: Colors.amber,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(lojas1.nome,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))),
                  SizedBox(height: 8.0),
                  SizedBox(height: 8.0),
                  Text(lojas1.endereco,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ))),
                  SizedBox(height: 16.0),
                  Text('Contatos:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Telefone fixo: ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                      Text(' (11) 4444-4488',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 165, 107, 255),
                            fontWeight: FontWeight.w400,
                          ))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WhatsApp:  ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      Text(
                        '    (11) 4444-4489',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 165, 107, 255),
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('  E-mail:',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                      Text('  contato@petcenter.com',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 165, 107, 255),
                            fontWeight: FontWeight.w400,
                          ))),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text('Horário de funcionamento:',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))),
                  SizedBox(height: 8.0),
                  Text('Seg-Sex: 8h-19h, Sáb: 9h-15h',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 165, 107, 255),
                        fontWeight: FontWeight.w400,
                      ))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'imagens/Mapa.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalhesLojaScreen2 extends StatelessWidget {
  final Loja loja2;

  DetalhesLojaScreen2({required this.loja2});

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
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    loja2.nome,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    loja2.endereco,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Detalhes da Loja:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Telefone fixo: (11) 4444-4488,',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'WhatsApp: (11) 4444-4489,',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'E-mail: contato@petcenter.com',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Horário de funcionamento: na cafas9ufgasbg',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Seg-Sex: 8h-19h, Sáb: 9h-15h',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.asset(
                  'imagens/Mapa.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
