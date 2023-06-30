// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EsqueciSenha extends StatefulWidget {
  const EsqueciSenha({super.key});

  @override
  State<EsqueciSenha> createState() => _EsqueciSenhaState();
}

class _EsqueciSenhaState extends State<EsqueciSenha> {
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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Color.fromARGB(255, 165, 107, 255),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    size: 20,
                    color: Color.fromARGB(255, 212, 148, 255),
                  ),
                  labelText: "E-mail",
                  contentPadding: EdgeInsets.symmetric(horizontal: 140),
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 100, 100, 100),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enviaremos um e-mail com um link para redefinir sua senha, digite o e-mail associado à sua conta acima.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11)),
                  backgroundColor: Color.fromARGB(255, 212, 148, 255)),
              child: Text(
                "Enviar Link",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
