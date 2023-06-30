import 'package:apppetlife/views/meuPerfil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class configteste extends StatefulWidget {
  const configteste({super.key});

  @override
  State<configteste> createState() => _configtesteState();
}

class _configtesteState extends State<configteste> {
  void _abrirPerfil() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MeuPerfil()));
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
        actions: [],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: UserInfoCard(),
      ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('imagens/Pessoa 3.jpg'),
            child: TextButton(
              onPressed: () {
                // Lógica para trocar a imagem do usuário
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Walter Menezes',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          Text(
            'Plano Prata',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 179, 179, 179))),
          ),
          SizedBox(height: 12),
          Container(
            height: 1,
            width: 300,
            color: Color.fromARGB(255, 165, 107, 255),
          ),
          TextButton(
            onPressed: () {
              // Lógica para adicionar uma nova conta
            },
            child: Text(
              'Ver meu Perfil',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 165, 107, 255),
              ),
            ),
          ),
          Container(
            height: 1,
            width: 500,
            color: Color.fromARGB(255, 165, 107, 255),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Alterar Senha",
                    style: TextStyle(color: Color.fromARGB(255, 165, 107, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.white)),
              SizedBox(
                height: 1,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Modo Escuro",
                    style: TextStyle(color: Color.fromARGB(255, 165, 107, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.white)),
              SizedBox(
                height: 1,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Recomendar para um amigo",
                    style: TextStyle(color: Color.fromARGB(255, 165, 107, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.white)),
              SizedBox(
                height: 1,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Guia Rápido de Uso",
                    style: TextStyle(color: Color.fromARGB(255, 165, 107, 255)),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.white)),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sair",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Color.fromARGB(255, 165, 107, 255))),
            ],
          )
        ],
      ),
    );
  }
}
