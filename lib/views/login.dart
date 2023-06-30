// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apppetlife/views/historico.dart';
import 'package:apppetlife/views/homeNavbar.dart';
import 'package:apppetlife/views/homes.dart';
import 'package:apppetlife/views/planos.dart';
import 'package:apppetlife/views/senha.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => PetLife();
}

class PetLife extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _users = {
    'guilherme@lindao': '123456',
    'pedrinho@lindao': '12345678',
  };
  String _username = '';
  String _password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Verificar as credenciais do usuário
      if (_users.containsKey(_username) && _users[_username] == _password) {
        // Login bem-sucedido, navegue para a próxima tela
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homes()),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Erro de login'),
              content: Text('Credenciais inválidas. Tente novamente.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  void _abrirsenha() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EsqueciSenha()));
  }

  void _abrirHistorico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Historico()));
  }

  void _abrirPlanos() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Planos()));
  }

  void _abrirNavbar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TestNavnar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'imagens/Logo.png',
                height: 100,
              ),
              Text(
                "Seja Bem-Vindo",
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 107, 255),
                  fontSize: 35,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 212, 148, 255),
                    )
                  ],
                  fontWeight: FontWeight.bold,
                ),
              ), // Substitua o caminho pela sua própria imagem
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color.fromARGB(255, 165, 107, 255),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          icon: FaIcon(
                            FontAwesomeIcons.envelope,
                            size: 20,
                            color: Color.fromARGB(255, 212, 148, 255),
                          ),
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 100, 100, 100))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, digite o Email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Color.fromARGB(255, 165, 107, 255),
                      decoration: InputDecoration(
                          labelText: 'Digite sua Senha',
                          icon: FaIcon(
                            FontAwesomeIcons.lockOpen,
                            size: 20,
                            color: Color.fromARGB(255, 212, 148, 255),
                          ),
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 100, 100, 100))),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, digite a senha';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsetsDirectional.all(20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _abrirsenha();
                            },
                            child: Text(
                              "Esqueci minha senha",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 212, 148, 255),
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 0.0,
                                    color: Colors.black26,
                                  )
                                ],
                              )),
                            ),
                          ),
                          SizedBox(width: 85),
                          ElevatedButton(
                            onPressed: _submitForm,
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11)),
                                backgroundColor:
                                    Color.fromARGB(255, 212, 148, 255)),
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 0.0,
                                    color: Colors.white,
                                  )
                                ],
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Criar Conta",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(69, 161, 255, 0.45),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 0.0,
                            color: Colors.black26,
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
